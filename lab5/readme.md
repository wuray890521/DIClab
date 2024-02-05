# Lab5
本次實驗主要是加入clock gate 控制always block  
加入clock gating後主要的問題為:  
1. 要如何用其他的訊號控制clock gate。
2. 加入clock gate後arear勢必會變大要如何在arear和power中做取捨，再增加少數面積情況下降下power的數值。
# clock gate 優點
1. 某些模組不需要工作的時候，為了降低功耗，需要關閉該模組的時鐘，節省觸發器的翻轉功耗。採用閘控時脈電路來控制時脈的關斷。
2. 如上所示，因為shift的次數下降power不需要不斷地做開關會導致power所需的數值下降。
# clock gate 缺點
1. en訊號不受控制，隨時可能發生訊號跳變，未經過時脈同步，和clk訊號直接相與極容易產生毛刺。
2. 當時脈clk為高電位時，en訊號的毛刺會傳播到時脈訊號GCLK中。
# 解決方法
透過一個暫存器或觸發器來同步en訊號，且clk為高電位時，暫存器或觸發器的輸出不變化。


# 參考資料
1. https://blog.csdn.net/eefresher/article/details/119516487
2. 
