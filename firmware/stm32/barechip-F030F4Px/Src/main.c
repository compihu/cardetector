/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f0xx_hal.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* USER CODE BEGIN Includes */
#include <string.h>

#include "config.h"
#include <globals.h>
#include <stm32plus/usart.h>
#include <stm32plus/strutil.h>
#include <stm32plus/pcf8574.h>
#include <cardetector_common/detector.h>
#include <cardetector_common/display.h>
#include <cardetector_common/liveconfig.h>
#include <cardetector_common/userinput.h>

#ifndef USE_I2C
#undef USE_LCD
#undef USE_LEDBAR
#undef USE_EEPROM
#endif

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/
#ifdef USE_I2C
I2cMaster_State *g_i2c;
#ifdef USE_EEPROM
I2cEEPROM_State g_eeprom;
#endif
#endif

uint8_t g_lineBuffer[64];
volatile uint8_t g_lineReceived = 0;

uint32_t g_counter = 0;

const LIVECONFIG g_config_default = { 0xA5, { SHIFT_BELOW, SHIFT_BASE, SHIFT_ABOVE,
		SHIFT_ACTIVE, SHIFT_TIMEOUT }	//below, above, active, timeout
		, SHIFT_SUM		//shift
		, TIMELIMIT		//tlimit
		, DIVIDER		//divider
		, MCCOUNT		//mccntexp
		, 0				//debug
#if defined(USE_LEDBAR)
		, {
			{ 1, 2, 6, 0xe, 0x1e, 0x3e, 0x7e, 0xfe },
			{ 1, 2, 6, 0xe, 0x1e, 0x3e, 0x7e, 0xfe }
		}
#endif
};

LIVECONFIG g_config;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/
void DisplayResults(uint8_t line);

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_USART1_UART_Init();
  MX_TIM16_Init();
  MX_TIM17_Init();

  /* USER CODE BEGIN 2 */
  g_config = g_config_default;

#ifdef USE_I2C
	g_i2c = I2cMaster_Init(&hi2c1);
	InitializeDisplay(g_i2c);
	I2cEEPROM_Init(&g_eeprom, g_i2c, EEPROMADDR, 1, 8);
#endif

#ifdef USE_SERIAL
	UsartInit(&huart1);
#endif

#if defined(USE_I2C) && defined(USE_LCD)
	I2cLcd_Clear(&g_lcd);
	I2cLcd_PrintStr(&g_lcd, "Hello");
#endif

#if defined(USE_SERIAL) && defined(USE_EEPROM)

#define TESTSIZE 2048/8

	HAL_StatusTypeDef st;
	uint8_t i2cBuffer[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

/*
	for(uint16_t i = 0; i < TESTSIZE; i += sizeof(i2cBuffer)) {
		if(!(i & (sizeof(i2cBuffer)-1))) {
			st = I2cEEPROM_Write(&g_eeprom, i, i2cBuffer, sizeof(i2cBuffer));
		}
	}

	for (uint16_t i = 0; i < TESTSIZE; ++i) {
		if(!(i & (sizeof(i2cBuffer)-1))) 	{
			st = I2cEEPROM_Read(&g_eeprom, i, i2cBuffer, sizeof(i2cBuffer));
			UsartSendStr("\r\n", 1);
			UsartPrintUint(i, 4, 1);
			UsartSendStr(" ", 1);
		}
		UsartPrintByte(i2cBuffer[i&(sizeof(i2cBuffer)-1)], 2, 1);
		UsartSendStr(" ", 1);
	}
	UsartSendStr("\r\n", 1);

	for(uint16_t i = 0; i < TESTSIZE; i += sizeof(i2cBuffer)) {
		if(!(i & (sizeof(i2cBuffer)-1))) {
			for(uint16_t j = 0; j<sizeof(i2cBuffer); ++j)
				i2cBuffer[j] = i+j;
			st = I2cEEPROM_Write(&g_eeprom, i, i2cBuffer, sizeof(i2cBuffer));
		}
	}

	for (uint16_t i = 0; i < TESTSIZE; ++i) {
		if(!(i & (sizeof(i2cBuffer)-1))) 	{
			st = I2cEEPROM_Read(&g_eeprom, i, i2cBuffer, sizeof(i2cBuffer));
			UsartSendStr("\r\n", 1);
			UsartPrintUint(i, 4, 1);
			UsartSendStr(" ", 1);
		}
		UsartPrintByte(i2cBuffer[i&(sizeof(i2cBuffer)-1)], 2, 1);
		UsartSendStr(" ", 1);
	}
	UsartSendStr("\r\n", 1);
*/
	{
		LIVECONFIG config;

		if (I2cEEPROM_Read(&g_eeprom, EESTART, &config, sizeof(config)) == HAL_OK) {
			I2cMaster_WaitCallback(g_i2c);
			if (config.magic == 0xA5)
				g_config = config;
		}
	}

	for (uint16_t i = 0; i < TESTSIZE; ++i) {
		if(!(i & (sizeof(i2cBuffer)-1))) 	{
			st = I2cEEPROM_Read(&g_eeprom, i, i2cBuffer, sizeof(i2cBuffer));
			UsartSendStr("\r\n", 1);
			UsartPrintUint(i, 4, 1);
			UsartSendStr(" ", 1);
		}
		UsartPrintByte(i2cBuffer[i&(sizeof(i2cBuffer)-1)], 2, 1);
		UsartSendStr(" ", 1);
	}
	UsartSendStr("\r\n", 1);

#endif
	HAL_TIM_IC_Start_IT(&htim16, TIM_CHANNEL_1);
	HAL_TIM_IC_Start_IT(&htim17, TIM_CHANNEL_1);

	HAL_UART_Receive_IT(&huart1, g_lineBuffer, sizeof(g_lineBuffer));

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

	while (1) {

		if (g_lineReceived) {
			ProcessInput(&g_config, (char*) g_lineBuffer);
			//DisplayInput(&i2clcd);
			g_lineReceived = 0;
			HAL_UART_Receive_IT(&huart1, g_lineBuffer, sizeof(g_lineBuffer));
		}

		if(g_statuses[0].trigger) {
		  DisplayResults(0);
		  g_statuses[0].trigger = 0;
		}
		if(g_statuses[1].trigger) {
		  DisplayResults(1);
		  g_statuses[1].trigger = 0;
		}

  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */

	}
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1|RCC_PERIPHCLK_I2C1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_HSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* USER CODE BEGIN 4 */
////////////////////////////////////////////////////////////////////
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
	if (huart == &huart1) {
		g_lineBuffer[sizeof(g_lineBuffer) - 1 - huart->RxXferCount] = 0;
		g_lineReceived = 1;
	}
}

////////////////////////////////////////////////////////////////////
void DisplayResults(uint8_t line)
{
	uint8_t			irqEnabled = __get_PRIMASK() == 0;
	__disable_irq();
	DETECTORSTATUS	st = g_statuses[line];
	if(irqEnabled) __enable_irq();

	uint32_t freq = ((uint32_t)((uint64_t)48000000*64 / st.lastMeasured));
	I2cLcd_SetCursor(&g_lcd, 0, line);
	I2cLcd_PrintUint(&g_lcd, freq, 0);
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	while (1) {
	}
  /* USER CODE END Error_Handler_Debug */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
	 ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
