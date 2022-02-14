# Target Language Compiler
Keywords: TLC; MATLAB Level 2 S Function; C Mex S Function; Coder Generation.

## Introduction
Target Language Compiler ([TLC](https://ww2.mathworks.cn/help/rtw/block-authoring-with-tlc.html)) is an integral part of the code generator. It enables you to customize generated code. Through customization, you can produce platform-specific code, or you can incorporate your own algorithmic changes for performance, code size, or compatibility with existing methods.
## Content Description
Sometimes, the default Simulink library maynot satisfy our requirement, so we should rely on [S function](https://ww2.mathworks.cn/help/rtw/s-functions.html) with TLC to generate custome code. Now, there are four examples:
* [Rand Generator](https://github.com/LLiang-Li/Target-Language-Compiler/tree/main/Rand%20Generator)
* Redefine pow block 
* Function call
* Custom Main function

The detail is shown in [wiki](https://github.com/LLiang-Li/Target-Language-Compiler/wiki).
