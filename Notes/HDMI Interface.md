# HDMI Interface

## 目录

[TOC]

## 理论

### 外观与引脚

![image.png](https://doc.embedfire.com/fpga/altera/ep4ce10_pro/zh/latest/_images/HDMI005.png)

图 41‑4 HDMI A Type接口引脚图



表格 41‑1 HDMI A Type接口引脚定义

| **引脚** | **定义**                      | **引脚** | **定义**                     |
| -------- | ----------------------------- | -------- | ---------------------------- |
| 1        | 数据2+ (TMDS Data2+)          | 11       | 时钟屏蔽 (TMDS Clock Shield) |
| 2        | 数据2屏蔽 (TMDS Data2 Shield) | 12       | 时钟- (TMDS Clock–)          |
| 3        | 数据2- ( TMDS Data2-)         | 13       | CEC                          |
| 4        | 数据1+ (TMDS Data1+)          | 14       | 保留                         |
| 5        | 数据1屏蔽 (TMDS Data1 Shield) | 15       | DDC时钟线(SCL)               |
| 6        | 数据1- ( TMDS Data1-)         | 16       | DDC数据线(SDA)               |
| 7        | 数据0+ (TMDS Data0+)          | 17       | DDC/CEC地 (DDC/CEC GND)      |
| 8        | 数据0屏蔽 (TMDS Data0 Shield) | 18       | +5V电源 (Power)              |
| 9        | 数据0- ( TMDS Data0-)         | 19       | 热插拔检测 (Hot Plug Detect) |
| 10       | 时钟+ (TMDS Clock+)           |          |                              |

HDMI共19个引脚，分上下两排，奇数在上，偶数在下，穿插排布。可将引脚分为4类。

1. TMDS通道，引脚1~12.发送音频、视频等数据。遵循DVI编码方式。
1. DDC通道，引脚15~17.显示数据通道。I$^2$C端口
1. CEC通道，引脚13、17.预留线路
1. 其他通道。

最重要的四对：4个差分对，1-3，4-6，7-9，10-12.



### 显示原理

![HDMI数据传输框图](https://doc.embedfire.com/fpga/altera/ep4ce10_pro/zh/latest/_images/HDMI006.png)

四个TMDS差分对：图中4个channel，一对差分对信号对应一个通道。这四个差分线对组成了TMDS数据和时钟通道，用于传递视频、音频和辅助数据。

DDC通道：**发送端**可通过此通道读取**接收端**的<u>显示模式</u>相关信息。

CEC通道：必须预留

HEAC通道：可选择的HDMI以太网和音频返回

HPD:热插拔检测



#### TMDS传输原理

最小化传输差分信号

HDMI中的TMDS 传输系统分为两个部分：发送端和接收端。 TMDS 发送端收到HDMI 接口传来的表示 RGB 信号的24 位并行数据（TMDS 对每个像素的 RGB 三原色分别按 8bit 编码，即 R信号有 8 位，G 信号有 8 位，B 信号有 8 位），然后对这些数据和时钟信号进行编码和并/串转换，再将表示 3 个 RGB 信号的数据和时钟信号分别分配到独立的传输通道发送出去。接收端接收来自发送端的串行信号，对其进行解码和串/并转换，然后发送到显示器的控制端。与此同时也接收时钟信号，以实现同步。流程框图如图 41‑6所示。

![图 41‑6 TMDS信道连接图](https://doc.embedfire.com/fpga/altera/ep4ce10_pro/zh/latest/_images/HDMI007.png)



左侧：三路8位RGB信号，行长同步信号等经过编码器和并串串转换

