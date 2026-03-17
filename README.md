# 🚗 NPVA-UFSM | Autonomous Vehicle Framework

![ROS 2](https://img.shields.io/badge/ROS_2-Humble-blue)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-E95420)
![Build](https://img.shields.io/badge/Build-Passing-success)
![License](https://img.shields.io/badge/License-MIT-green)

Bem-vindo ao repositório principal do **Framework de Software para Veículos Autônomos** do NPVA-UFSM. Este repositório contém a arquitetura central, os pacotes ROS e os nós responsáveis por integrar todos os subsistemas necessários para a navegação autônoma, desde a leitura de sensores até a atuação nos motores e direção.

---

## 🏗️ Arquitetura do Sistema

Nosso framework é altamente modular e baseado na arquitetura de nós do ROS (Robot Operating System). Ele é dividido nos seguintes pacotes principais:

* **`npva_perception`:** Processamento de dados sensoriais. Inclui detecção de faixas, semáforos, pedestres e veículos utilizando câmeras e LiDAR. Fusão de sensores (Sensor Fusion).
* **`npva_localization`:** Algoritmos de odometria, SLAM (Simultaneous Localization and Mapping) e integração com GPS/IMU para determinar a posição exata do veículo no mundo.
* **`npva_planning`:** Tomada de decisão. Inclui o planejamento de rotas globais (mapa) e o planejamento de trajetórias locais (desvio de obstáculos dinâmicos).
* **`npva_navigation`:** Controladores de baixo nível. Implementações de controle lateral (ex: Pure Pursuit, Stanley) e longitudinal (ex: PID, MPC) para seguir a trajetória planejada.
* **`npva_interfaces`:** Definição de mensagens customizadas (interfaces `.msg` e `.srv`) utilizadas para a comunicação interna entre os nós do framework.
* **`npva_simulation`:** Arquivos de configuração, mapas e URDFs para rodar o framework em ambientes virtuais como Gazebo, Unreal ou CARLA.

---

## 📂 Estrutura do Repositório

```text
framework/
└── README.md             # Este arquivo
