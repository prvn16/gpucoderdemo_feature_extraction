if isempty(currentFigures), currentFigures = []; end;
close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw64
[~,~,~] = rmdir('C:\Sumpurn\gpucoderdemo_feature_extraction\codegen','s');
clear C:\Sumpurn\gpucoderdemo_feature_extraction\BoxIntegral.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\BoxIntegral.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\Convert32bitFPGray.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\Convert32bitFPGray.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\DrawIpoints.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\DrawIpoints.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\FastHessian.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\FastHessian.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\FastHessianCalc.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\FastHessianCalc.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\MyIntegralImage.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\MyIntegralImage.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxCalc.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxCalc.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxSuppression.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxSuppression.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxSuppression_gpu.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\NonMaxSuppression_gpu.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\OrientationCalc.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\OrientationCalc.m
clear C:\Sumpurn\gpucoderdemo_feature_extraction\SurfDetect.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\SurfDetect.m
delete C:\Sumpurn\gpucoderdemo_feature_extraction\peppers.png
clear
load old_workspace
delete old_workspace.mat
delete C:\Sumpurn\gpucoderdemo_feature_extraction\cleanup.m
cd C:\Sumpurn
rmdir('C:\Sumpurn\gpucoderdemo_feature_extraction','s');
