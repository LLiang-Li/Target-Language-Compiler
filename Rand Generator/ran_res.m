function ran_res(block)
% Level-2 MATLAB file S-Function for times two demo.
%   Copyright 1990-2009 The MathWorks, Inc.

  setup(block);
  
%endfunction

function setup(block)
  
  %% Register number of input and output ports
  block.NumInputPorts  = 0;
  block.NumOutputPorts = 1;

  %% Register the parameters.
  block.NumDialogPrms     = 3;
  
  %% Setup functional port properties to dynamically
  % inherited.
  block.SetPreCompOutPortInfoToDynamic;
  block.OutputPort(1).Dimensions=[block.DialogPrm(1).Data block.DialogPrm(2).Data];
  
  % Set up the outport sampling mode.
  block.OutputPort(1).SamplingMode = 'Sample';
  %% Set block sample time to inherited
  block.SampleTimes = [-1 0];
  
  %% Set the block simStateCompliance to default (i.e., same as a built-in block)
  block.SimStateCompliance = 'DefaultSimState';

  %% Run accelerator on TLC
  block.SetAccelRunOnTLC(true);
  
  %% Register methods
  block.RegBlockMethod('Outputs',@Output);  
  block.RegBlockMethod('WriteRTW', @WriteRTW);
  block.RegBlockMethod('Start', @Start);
%endfunction

function Output(block)
  
  block.OutputPort(1).Data = 2*block.DialogPrm(3).Data*rand(block.DialogPrm(1).Data,block.DialogPrm(2).Data)-...
      block.DialogPrm(3).Data;
  
%endfunction

function Start(block)



function WriteRTW(block)
  
   block.WriteRTWParam('string', 'MAX',  num2str(block.DialogPrm(3).Data));
      
%endfunction
