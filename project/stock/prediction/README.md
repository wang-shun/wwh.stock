#prediction

基于前馈神经网络对短期股票数值（高低点）进行预测，项目基于javaEE构建，另有网络爬虫每日抓取（从sina）当日数据。系统每次计算均会重新对过去k天数值进行重新训练模型，算出下一天股票预测价格