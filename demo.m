%% 最初に実行
% 情報ファイルを作成する
run CombineDataFiles.m
% トラッキングデータを画像に重ねる
run PlotTrajectories.m
close all
% トラッキングデータの縦横を補正し、円形にする
run EllipseCorrections.m
close all
% においありエリアの境界を確定させ、データを回す
run PickUpFile_Phero.m
close all

%% 閾値をいじるとき
% トラッキングミスによるデータのジャンプを補正し調整する
run CompensateJump.m
% 各フレームに関する情報をまとめたファイルを作る
run CalculationData.m

%% CalculateAngle.Rmdの後に実行
% 角度を計算する
% 滞在率に関する処理を行う
run StayRate.m
% 活動性に関する処理を行う
run Activity.m
% 方向転換に関する処理を行う
run Turn.m