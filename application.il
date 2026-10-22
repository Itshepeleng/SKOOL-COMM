
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern SkoolComm.Domain
{
  .ver 1:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly SkoolComm.Application
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 19 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 31 30 2E 30 01 00 54 0E   // ersion=v10.0..T.
                                                                                                              14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
                                                                                                              79 4E 61 6D 65 09 2E 4E 45 54 20 31 30 2E 30 )    // yName..NET 10.0
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 15 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ...SkoolComm.App
                                                                                                      6C 69 63 61 74 69 6F 6E 00 00 )                   // lication..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 15 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ...SkoolComm.App
                                                                                                      6C 69 63 61 74 69 6F 6E 00 00 )                   // lication..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 15 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ...SkoolComm.App
                                                                                                    6C 69 63 61 74 69 6F 6E 00 00 )                   // lication..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module SkoolComm.Application.dll
// MVID: {838C52B0-F77A-4FFE-94CC-AE163B73908F}
.custom instance void [System.Runtime]System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x05400000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit SkoolComm.Application.Services.StudentService
       extends [System.Runtime]System.Object
       implements SkoolComm.Application.Interfaces.IStudentService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type SkoolComm.Application.Interfaces.IStudentService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi sealed nested private beforefieldinit '<AddAsync>d__4'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Application.Services.StudentService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<AddAsync>d__4'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       171 (0xab)
      .maxstack  3
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_1,
               class SkoolComm.Application.Services.StudentService/'<AddAsync>d__4' V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0058

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>4__this'
        IL_0015:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
        IL_001a:  ldarg.0
        IL_001b:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::student
        IL_0020:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository::AddAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student)
        IL_0025:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
        IL_002a:  stloc.1
        IL_002b:  ldloca.s   V_1
        IL_002d:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
        IL_0032:  brtrue.s   IL_0074

        IL_0034:  ldarg.0
        IL_0035:  ldc.i4.0
        IL_0036:  dup
        IL_0037:  stloc.0
        IL_0038:  stfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
        IL_003d:  ldarg.0
        IL_003e:  ldloc.1
        IL_003f:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>u__1'
        IL_0044:  ldarg.0
        IL_0045:  stloc.2
        IL_0046:  ldarg.0
        IL_0047:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
        IL_004c:  ldloca.s   V_1
        IL_004e:  ldloca.s   V_2
        IL_0050:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,class SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                      !!1&)
        IL_0055:  nop
        IL_0056:  leave.s    IL_00aa

        IL_0058:  ldarg.0
        IL_0059:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>u__1'
        IL_005e:  stloc.1
        IL_005f:  ldarg.0
        IL_0060:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>u__1'
        IL_0065:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
        IL_006b:  ldarg.0
        IL_006c:  ldc.i4.m1
        IL_006d:  dup
        IL_006e:  stloc.0
        IL_006f:  stfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
        IL_0074:  ldloca.s   V_1
        IL_0076:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
        IL_007b:  nop
        IL_007c:  leave.s    IL_0096

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_007e:  stloc.3
        IL_007f:  ldarg.0
        IL_0080:  ldc.i4.s   -2
        IL_0082:  stfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
        IL_0087:  ldarg.0
        IL_0088:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
        IL_008d:  ldloc.3
        IL_008e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0093:  nop
        IL_0094:  leave.s    IL_00aa

      }  // end handler
      IL_0096:  ldarg.0
      IL_0097:  ldc.i4.s   -2
      IL_0099:  stfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
      IL_009e:  ldarg.0
      IL_009f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
      IL_00a4:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_00a9:  nop
      IL_00aa:  ret
    } // end of method '<AddAsync>d__4'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<AddAsync>d__4'::SetStateMachine

  } // end of class '<AddAsync>d__4'

  .class auto ansi sealed nested private beforefieldinit '<DeleteAsync>d__6'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public int32 id
    .field public class SkoolComm.Application.Services.StudentService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<DeleteAsync>d__6'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       171 (0xab)
      .maxstack  3
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_1,
               class SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6' V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0058

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>4__this'
        IL_0015:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
        IL_001a:  ldarg.0
        IL_001b:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::id
        IL_0020:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository::DeleteAsync(int32)
        IL_0025:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
        IL_002a:  stloc.1
        IL_002b:  ldloca.s   V_1
        IL_002d:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
        IL_0032:  brtrue.s   IL_0074

        IL_0034:  ldarg.0
        IL_0035:  ldc.i4.0
        IL_0036:  dup
        IL_0037:  stloc.0
        IL_0038:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
        IL_003d:  ldarg.0
        IL_003e:  ldloc.1
        IL_003f:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>u__1'
        IL_0044:  ldarg.0
        IL_0045:  stloc.2
        IL_0046:  ldarg.0
        IL_0047:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
        IL_004c:  ldloca.s   V_1
        IL_004e:  ldloca.s   V_2
        IL_0050:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,class SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'>(!!0&,
                                                                                                                                                                                                                                                                                         !!1&)
        IL_0055:  nop
        IL_0056:  leave.s    IL_00aa

        IL_0058:  ldarg.0
        IL_0059:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>u__1'
        IL_005e:  stloc.1
        IL_005f:  ldarg.0
        IL_0060:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>u__1'
        IL_0065:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
        IL_006b:  ldarg.0
        IL_006c:  ldc.i4.m1
        IL_006d:  dup
        IL_006e:  stloc.0
        IL_006f:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
        IL_0074:  ldloca.s   V_1
        IL_0076:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
        IL_007b:  nop
        IL_007c:  leave.s    IL_0096

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_007e:  stloc.3
        IL_007f:  ldarg.0
        IL_0080:  ldc.i4.s   -2
        IL_0082:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
        IL_0087:  ldarg.0
        IL_0088:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
        IL_008d:  ldloc.3
        IL_008e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0093:  nop
        IL_0094:  leave.s    IL_00aa

      }  // end handler
      IL_0096:  ldarg.0
      IL_0097:  ldc.i4.s   -2
      IL_0099:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
      IL_009e:  ldarg.0
      IL_009f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
      IL_00a4:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_00a9:  nop
      IL_00aa:  ret
    } // end of method '<DeleteAsync>d__6'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<DeleteAsync>d__6'::SetStateMachine

  } // end of class '<DeleteAsync>d__6'

  .class auto ansi sealed nested private beforefieldinit '<GetAllAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Application.Services.StudentService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> '<>s__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<GetAllAsync>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       180 (0xb4)
      .maxstack  3
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> V_2,
               class SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2' V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0052

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>4__this'
        IL_0015:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
        IL_001a:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository::GetAllAsync()
        IL_001f:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::GetAwaiter()
        IL_0024:  stloc.2
        IL_0025:  ldloca.s   V_2
        IL_0027:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::get_IsCompleted()
        IL_002c:  brtrue.s   IL_006e

        IL_002e:  ldarg.0
        IL_002f:  ldc.i4.0
        IL_0030:  dup
        IL_0031:  stloc.0
        IL_0032:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0037:  ldarg.0
        IL_0038:  ldloc.2
        IL_0039:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>u__1'
        IL_003e:  ldarg.0
        IL_003f:  stloc.3
        IL_0040:  ldarg.0
        IL_0041:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0046:  ldloca.s   V_2
        IL_0048:  ldloca.s   V_3
        IL_004a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>,class SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       !!1&)
        IL_004f:  nop
        IL_0050:  leave.s    IL_00b3

        IL_0052:  ldarg.0
        IL_0053:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0058:  stloc.2
        IL_0059:  ldarg.0
        IL_005a:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>u__1'
        IL_005f:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>
        IL_0065:  ldarg.0
        IL_0066:  ldc.i4.m1
        IL_0067:  dup
        IL_0068:  stloc.0
        IL_0069:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
        IL_006e:  ldarg.0
        IL_006f:  ldloca.s   V_2
        IL_0071:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::GetResult()
        IL_0076:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>s__1'
        IL_007b:  ldarg.0
        IL_007c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>s__1'
        IL_0081:  stloc.1
        IL_0082:  leave.s    IL_009e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0084:  stloc.s    V_4
        IL_0086:  ldarg.0
        IL_0087:  ldc.i4.s   -2
        IL_0089:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
        IL_008e:  ldarg.0
        IL_008f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0094:  ldloc.s    V_4
        IL_0096:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::SetException(class [System.Runtime]System.Exception)
        IL_009b:  nop
        IL_009c:  leave.s    IL_00b3

      }  // end handler
      IL_009e:  ldarg.0
      IL_009f:  ldc.i4.s   -2
      IL_00a1:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
      IL_00a6:  ldarg.0
      IL_00a7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
      IL_00ac:  ldloc.1
      IL_00ad:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::SetResult(!0)
      IL_00b2:  nop
      IL_00b3:  ret
    } // end of method '<GetAllAsync>d__2'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetAllAsync>d__2'::SetStateMachine

  } // end of class '<GetAllAsync>d__2'

  .class auto ansi sealed nested private beforefieldinit '<GetByIdAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 id
    .field public class SkoolComm.Application.Services.StudentService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student '<>s__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 02 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<GetByIdAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       186 (0xba)
      .maxstack  3
      .locals init (int32 V_0,
               class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> V_2,
               class SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3' V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0058

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>4__this'
        IL_0015:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
        IL_001a:  ldarg.0
        IL_001b:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::id
        IL_0020:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository::GetByIdAsync(int32)
        IL_0025:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::GetAwaiter()
        IL_002a:  stloc.2
        IL_002b:  ldloca.s   V_2
        IL_002d:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::get_IsCompleted()
        IL_0032:  brtrue.s   IL_0074

        IL_0034:  ldarg.0
        IL_0035:  ldc.i4.0
        IL_0036:  dup
        IL_0037:  stloc.0
        IL_0038:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
        IL_003d:  ldarg.0
        IL_003e:  ldloc.2
        IL_003f:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>u__1'
        IL_0044:  ldarg.0
        IL_0045:  stloc.3
        IL_0046:  ldarg.0
        IL_0047:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
        IL_004c:  ldloca.s   V_2
        IL_004e:  ldloca.s   V_3
        IL_0050:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>,class SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                              !!1&)
        IL_0055:  nop
        IL_0056:  leave.s    IL_00b9

        IL_0058:  ldarg.0
        IL_0059:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>u__1'
        IL_005e:  stloc.2
        IL_005f:  ldarg.0
        IL_0060:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>u__1'
        IL_0065:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>
        IL_006b:  ldarg.0
        IL_006c:  ldc.i4.m1
        IL_006d:  dup
        IL_006e:  stloc.0
        IL_006f:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
        IL_0074:  ldarg.0
        IL_0075:  ldloca.s   V_2
        IL_0077:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::GetResult()
        IL_007c:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>s__1'
        IL_0081:  ldarg.0
        IL_0082:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>s__1'
        IL_0087:  stloc.1
        IL_0088:  leave.s    IL_00a4

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_008a:  stloc.s    V_4
        IL_008c:  ldarg.0
        IL_008d:  ldc.i4.s   -2
        IL_008f:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
        IL_0094:  ldarg.0
        IL_0095:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
        IL_009a:  ldloc.s    V_4
        IL_009c:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::SetException(class [System.Runtime]System.Exception)
        IL_00a1:  nop
        IL_00a2:  leave.s    IL_00b9

      }  // end handler
      IL_00a4:  ldarg.0
      IL_00a5:  ldc.i4.s   -2
      IL_00a7:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
      IL_00ac:  ldarg.0
      IL_00ad:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
      IL_00b2:  ldloc.1
      IL_00b3:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::SetResult(!0)
      IL_00b8:  nop
      IL_00b9:  ret
    } // end of method '<GetByIdAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetByIdAsync>d__3'::SetStateMachine

  } // end of class '<GetByIdAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<UpdateAsync>d__5'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Application.Services.StudentService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<UpdateAsync>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       171 (0xab)
      .maxstack  3
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_1,
               class SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5' V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0058

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>4__this'
        IL_0015:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
        IL_001a:  ldarg.0
        IL_001b:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::student
        IL_0020:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository::UpdateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student)
        IL_0025:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
        IL_002a:  stloc.1
        IL_002b:  ldloca.s   V_1
        IL_002d:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
        IL_0032:  brtrue.s   IL_0074

        IL_0034:  ldarg.0
        IL_0035:  ldc.i4.0
        IL_0036:  dup
        IL_0037:  stloc.0
        IL_0038:  stfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
        IL_003d:  ldarg.0
        IL_003e:  ldloc.1
        IL_003f:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>u__1'
        IL_0044:  ldarg.0
        IL_0045:  stloc.2
        IL_0046:  ldarg.0
        IL_0047:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
        IL_004c:  ldloca.s   V_1
        IL_004e:  ldloca.s   V_2
        IL_0050:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,class SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'>(!!0&,
                                                                                                                                                                                                                                                                                         !!1&)
        IL_0055:  nop
        IL_0056:  leave.s    IL_00aa

        IL_0058:  ldarg.0
        IL_0059:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>u__1'
        IL_005e:  stloc.1
        IL_005f:  ldarg.0
        IL_0060:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>u__1'
        IL_0065:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
        IL_006b:  ldarg.0
        IL_006c:  ldc.i4.m1
        IL_006d:  dup
        IL_006e:  stloc.0
        IL_006f:  stfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
        IL_0074:  ldloca.s   V_1
        IL_0076:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
        IL_007b:  nop
        IL_007c:  leave.s    IL_0096

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_007e:  stloc.3
        IL_007f:  ldarg.0
        IL_0080:  ldc.i4.s   -2
        IL_0082:  stfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
        IL_0087:  ldarg.0
        IL_0088:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
        IL_008d:  ldloc.3
        IL_008e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0093:  nop
        IL_0094:  leave.s    IL_00aa

      }  // end handler
      IL_0096:  ldarg.0
      IL_0097:  ldc.i4.s   -2
      IL_0099:  stfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
      IL_009e:  ldarg.0
      IL_009f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
      IL_00a4:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_00a9:  nop
      IL_00aa:  ret
    } // end of method '<UpdateAsync>d__5'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<UpdateAsync>d__5'::SetStateMachine

  } // end of class '<UpdateAsync>d__5'

  .field private initonly class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository _studentRepository
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository studentRepository) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository SkoolComm.Application.Services.StudentService::_studentRepository
    IL_000f:  ret
  } // end of method StudentService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3F 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ..?SkoolComm.App
                                                                                                                                                   6C 69 63 61 74 69 6F 6E 2E 53 65 72 76 69 63 65   // lication.Service
                                                                                                                                                   73 2E 53 74 75 64 65 6E 74 53 65 72 76 69 63 65   // s.StudentService
                                                                                                                                                   2B 3C 47 65 74 41 6C 6C 41 73 79 6E 63 3E 64 5F   // +<GetAllAsync>d_
                                                                                                                                                   5F 32 00 00 )                                     // _2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::Start<class SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Application.Services.StudentService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::get_Task()
    IL_0037:  ret
  } // end of method StudentService::GetAllAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> 
          GetByIdAsync(int32 id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 40 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ..@SkoolComm.App
                                                                                                                                                   6C 69 63 61 74 69 6F 6E 2E 53 65 72 76 69 63 65   // lication.Service
                                                                                                                                                   73 2E 53 74 75 64 65 6E 74 53 65 72 76 69 63 65   // s.StudentService
                                                                                                                                                   2B 3C 47 65 74 42 79 49 64 41 73 79 6E 63 3E 64   // +<GetByIdAsync>d
                                                                                                                                                   5F 5F 33 00 00 )                                  // __3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::id
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::Start<class SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Application.Services.StudentService/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::get_Task()
    IL_003e:  ret
  } // end of method StudentService::GetByIdAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          AddAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3C 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ..<SkoolComm.App
                                                                                                                                                   6C 69 63 61 74 69 6F 6E 2E 53 65 72 76 69 63 65   // lication.Service
                                                                                                                                                   73 2E 53 74 75 64 65 6E 74 53 65 72 76 69 63 65   // s.StudentService
                                                                                                                                                   2B 3C 41 64 64 41 73 79 6E 63 3E 64 5F 5F 34 00   // +<AddAsync>d__4.
                                                                                                                                                   00 ) 
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Application.Services.StudentService/'<AddAsync>d__4' V_0)
    IL_0000:  newobj     instance void SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::student
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<AddAsync>d__4'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentService::AddAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3F 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ..?SkoolComm.App
                                                                                                                                                   6C 69 63 61 74 69 6F 6E 2E 53 65 72 76 69 63 65   // lication.Service
                                                                                                                                                   73 2E 53 74 75 64 65 6E 74 53 65 72 76 69 63 65   // s.StudentService
                                                                                                                                                   2B 3C 55 70 64 61 74 65 41 73 79 6E 63 3E 64 5F   // +<UpdateAsync>d_
                                                                                                                                                   5F 35 00 00 )                                     // _5..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5' V_0)
    IL_0000:  newobj     instance void SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::student
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<UpdateAsync>d__5'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentService::UpdateAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(int32 id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3F 53 6B 6F 6F 6C 43 6F 6D 6D 2E 41 70 70   // ..?SkoolComm.App
                                                                                                                                                   6C 69 63 61 74 69 6F 6E 2E 53 65 72 76 69 63 65   // lication.Service
                                                                                                                                                   73 2E 53 74 75 64 65 6E 74 53 65 72 76 69 63 65   // s.StudentService
                                                                                                                                                   2B 3C 44 65 6C 65 74 65 41 73 79 6E 63 3E 64 5F   // +<DeleteAsync>d_
                                                                                                                                                   5F 36 00 00 )                                     // _6..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6' V_0)
    IL_0000:  newobj     instance void SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Application.Services.StudentService SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::id
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Application.Services.StudentService/'<DeleteAsync>d__6'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentService::DeleteAsync

} // end of class SkoolComm.Application.Services.StudentService

.class interface private abstract auto ansi beforefieldinit SkoolComm.Application.Interfaces.IParentRepository
{
} // end of class SkoolComm.Application.Interfaces.IParentRepository

.class interface public abstract auto ansi beforefieldinit SkoolComm.Application.Interfaces.IStudentService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> 
          GetAllAsync() cil managed
  {
  } // end of method IStudentService::GetAllAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> 
          GetByIdAsync(int32 id) cil managed
  {
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
  } // end of method IStudentService::GetByIdAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          AddAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
  } // end of method IStudentService::AddAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
  } // end of method IStudentService::UpdateAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(int32 id) cil managed
  {
  } // end of method IStudentService::DeleteAsync

} // end of class SkoolComm.Application.Interfaces.IStudentService


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\application.res
