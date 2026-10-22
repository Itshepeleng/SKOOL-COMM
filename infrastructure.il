
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
.assembly extern Supabase
{
  .ver 8:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern Supabase.Postgrest
{
  .ver 8:0:0:0
}
.assembly extern System.Linq
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern Supabase.Gotrue
{
  .ver 8:0:0:0
}
.assembly extern System.Linq.Expressions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern System.Text.Json
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         // .{...-.Q
  .ver 10:0:0:0
}
.assembly extern Supabase.Realtime
{
  .ver 8:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly SkoolComm.Infrastructure
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 18 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ...SkoolComm.Inf
                                                                                                      72 61 73 74 72 75 63 74 75 72 65 00 00 )          // rastructure..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 18 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ...SkoolComm.Inf
                                                                                                      72 61 73 74 72 75 63 74 75 72 65 00 00 )          // rastructure..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 18 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ...SkoolComm.Inf
                                                                                                    72 61 73 74 72 75 63 74 75 72 65 00 00 )          // rastructure..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module SkoolComm.Infrastructure.dll
// MVID: {3E19007D-5121-4C53-86F0-813CE991AA96}
.custom instance void [System.Runtime]System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x06CF0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseAnnouncementService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAnnouncementService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAnnouncementService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,valuetype [System.Runtime]System.DateTime> '<>9__2_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement> '<>9__2_1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance valuetype [System.Runtime]System.DateTime 
            '<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.AnnouncementRecord r) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AnnouncementRecord::get_DatePosted()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_0'

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement 
            '<GetAllAsync>b__2_1'(class SkoolComm.Infrastructure.Models.AnnouncementRecord r) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       84 (0x54)
      .maxstack  3
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::get_AnnouncementId()
      IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_AnnouncementId(int32)
      IL_0011:  nop
      IL_0012:  dup
      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::get_StaffId()
      IL_0019:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_StaffId(int32)
      IL_001e:  nop
      IL_001f:  dup
      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_Title()
      IL_0026:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_Title(string)
      IL_002b:  nop
      IL_002c:  dup
      IL_002d:  ldarg.1
      IL_002e:  callvirt   instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_Content()
      IL_0033:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_Content(string)
      IL_0038:  nop
      IL_0039:  dup
      IL_003a:  ldarg.1
      IL_003b:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AnnouncementRecord::get_DatePosted()
      IL_0040:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_DatePosted(valuetype [System.Runtime]System.DateTime)
      IL_0045:  nop
      IL_0046:  dup
      IL_0047:  ldarg.1
      IL_0048:  callvirt   instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_TargetAudience()
      IL_004d:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::set_TargetAudience(string)
      IL_0052:  nop
      IL_0053:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_1'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<CreateAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement announcement
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.AnnouncementRecord '<record>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> '<>u__1'
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
    } // end of method '<CreateAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       306 (0x132)
      .maxstack  4
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> V_1,
               valuetype [System.Runtime]System.Threading.CancellationToken V_2,
               class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3' V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_00cf

        IL_0011:  nop
        IL_0012:  ldarg.0
        IL_0013:  newobj     instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::.ctor()
        IL_0018:  dup
        IL_0019:  ldarg.0
        IL_001a:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
        IL_001f:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::get_StaffId()
        IL_0024:  callvirt   instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_StaffId(int32)
        IL_0029:  nop
        IL_002a:  dup
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
        IL_0031:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::get_Title()
        IL_0036:  callvirt   instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_Title(string)
        IL_003b:  nop
        IL_003c:  dup
        IL_003d:  ldarg.0
        IL_003e:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
        IL_0043:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::get_Content()
        IL_0048:  callvirt   instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_Content(string)
        IL_004d:  nop
        IL_004e:  dup
        IL_004f:  ldarg.0
        IL_0050:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
        IL_0055:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::get_DatePosted()
        IL_005a:  callvirt   instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_DatePosted(valuetype [System.Runtime]System.DateTime)
        IL_005f:  nop
        IL_0060:  dup
        IL_0061:  ldarg.0
        IL_0062:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
        IL_0067:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement::get_TargetAudience()
        IL_006c:  callvirt   instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_TargetAudience(string)
        IL_0071:  nop
        IL_0072:  stfld      class SkoolComm.Infrastructure.Models.AnnouncementRecord SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<record>5__1'
        IL_0077:  ldarg.0
        IL_0078:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>4__this'
        IL_007d:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAnnouncementService::_supabase
        IL_0082:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AnnouncementRecord>()
        IL_0087:  ldarg.0
        IL_0088:  ldfld      class SkoolComm.Infrastructure.Models.AnnouncementRecord SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<record>5__1'
        IL_008d:  ldnull
        IL_008e:  ldloca.s   V_2
        IL_0090:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0096:  ldloc.2
        IL_0097:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>::Insert(!0,
                                                                                                                                                                                                                                                                                                                    class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                    valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_009c:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::GetAwaiter()
        IL_00a1:  stloc.1
        IL_00a2:  ldloca.s   V_1
        IL_00a4:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::get_IsCompleted()
        IL_00a9:  brtrue.s   IL_00eb

        IL_00ab:  ldarg.0
        IL_00ac:  ldc.i4.0
        IL_00ad:  dup
        IL_00ae:  stloc.0
        IL_00af:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
        IL_00b4:  ldarg.0
        IL_00b5:  ldloc.1
        IL_00b6:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>u__1'
        IL_00bb:  ldarg.0
        IL_00bc:  stloc.3
        IL_00bd:  ldarg.0
        IL_00be:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
        IL_00c3:  ldloca.s   V_1
        IL_00c5:  ldloca.s   V_3
        IL_00c7:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                               !!1&)
        IL_00cc:  nop
        IL_00cd:  leave.s    IL_0131

        IL_00cf:  ldarg.0
        IL_00d0:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>u__1'
        IL_00d5:  stloc.1
        IL_00d6:  ldarg.0
        IL_00d7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>u__1'
        IL_00dc:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>
        IL_00e2:  ldarg.0
        IL_00e3:  ldc.i4.m1
        IL_00e4:  dup
        IL_00e5:  stloc.0
        IL_00e6:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
        IL_00eb:  ldloca.s   V_1
        IL_00ed:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::GetResult()
        IL_00f2:  pop
        IL_00f3:  leave.s    IL_0116

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00f5:  stloc.s    V_4
        IL_00f7:  ldarg.0
        IL_00f8:  ldc.i4.s   -2
        IL_00fa:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
        IL_00ff:  ldarg.0
        IL_0100:  ldnull
        IL_0101:  stfld      class SkoolComm.Infrastructure.Models.AnnouncementRecord SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<record>5__1'
        IL_0106:  ldarg.0
        IL_0107:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
        IL_010c:  ldloc.s    V_4
        IL_010e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0113:  nop
        IL_0114:  leave.s    IL_0131

      }  // end handler
      IL_0116:  ldarg.0
      IL_0117:  ldc.i4.s   -2
      IL_0119:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
      IL_011e:  ldarg.0
      IL_011f:  ldnull
      IL_0120:  stfld      class SkoolComm.Infrastructure.Models.AnnouncementRecord SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<record>5__1'
      IL_0125:  ldarg.0
      IL_0126:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
      IL_012b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0130:  nop
      IL_0131:  ret
    } // end of method '<CreateAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<CreateAsync>d__3'::SetStateMachine

  } // end of class '<CreateAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<GetAllAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> '<response>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> '<>s__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> '<>u__1'
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
      // Code size       314 (0x13a)
      .maxstack  3
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0065

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>4__this'
        IL_0015:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAnnouncementService::_supabase
        IL_001a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AnnouncementRecord>()
        IL_001f:  ldloca.s   V_3
        IL_0021:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0027:  ldloc.3
        IL_0028:  ldc.i4.2
        IL_0029:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                                 valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_002e:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::GetAwaiter()
        IL_0033:  stloc.2
        IL_0034:  ldloca.s   V_2
        IL_0036:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::get_IsCompleted()
        IL_003b:  brtrue.s   IL_0081

        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.0
        IL_003f:  dup
        IL_0040:  stloc.0
        IL_0041:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0046:  ldarg.0
        IL_0047:  ldloc.2
        IL_0048:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>u__1'
        IL_004d:  ldarg.0
        IL_004e:  stloc.s    V_4
        IL_0050:  ldarg.0
        IL_0051:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0056:  ldloca.s   V_2
        IL_0058:  ldloca.s   V_4
        IL_005a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      !!1&)
        IL_005f:  nop
        IL_0060:  leave      IL_0139

        IL_0065:  ldarg.0
        IL_0066:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>u__1'
        IL_006b:  stloc.2
        IL_006c:  ldarg.0
        IL_006d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0072:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>
        IL_0078:  ldarg.0
        IL_0079:  ldc.i4.m1
        IL_007a:  dup
        IL_007b:  stloc.0
        IL_007c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0081:  ldarg.0
        IL_0082:  ldloca.s   V_2
        IL_0084:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>>::GetResult()
        IL_0089:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>s__2'
        IL_008e:  ldarg.0
        IL_008f:  ldarg.0
        IL_0090:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>s__2'
        IL_0095:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<response>5__1'
        IL_009a:  ldarg.0
        IL_009b:  ldnull
        IL_009c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>s__2'
        IL_00a1:  ldarg.0
        IL_00a2:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<response>5__1'
        IL_00a7:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord>::get_Models()
        IL_00ac:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9__2_0'
        IL_00b1:  dup
        IL_00b2:  brtrue.s   IL_00cb

        IL_00b4:  pop
        IL_00b5:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9'
        IL_00ba:  ldftn      instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.AnnouncementRecord)
        IL_00c0:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,valuetype [System.Runtime]System.DateTime>::.ctor(object,
                                                                                                                                                                                          native int)
        IL_00c5:  dup
        IL_00c6:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9__2_0'
        IL_00cb:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderByDescending<class SkoolComm.Infrastructure.Models.AnnouncementRecord,valuetype [System.Runtime]System.DateTime>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00d0:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9__2_1'
        IL_00d5:  dup
        IL_00d6:  brtrue.s   IL_00ef

        IL_00d8:  pop
        IL_00d9:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9'
        IL_00de:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<GetAllAsync>b__2_1'(class SkoolComm.Infrastructure.Models.AnnouncementRecord)
        IL_00e4:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>::.ctor(object,
                                                                                                                                                                                                             native int)
        IL_00e9:  dup
        IL_00ea:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AnnouncementRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<>c'::'<>9__2_1'
        IL_00ef:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.AnnouncementRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00f4:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_00f9:  stloc.1
        IL_00fa:  leave.s    IL_011d

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00fc:  stloc.s    V_5
        IL_00fe:  ldarg.0
        IL_00ff:  ldc.i4.s   -2
        IL_0101:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0106:  ldarg.0
        IL_0107:  ldnull
        IL_0108:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<response>5__1'
        IL_010d:  ldarg.0
        IL_010e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0113:  ldloc.s    V_5
        IL_0115:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::SetException(class [System.Runtime]System.Exception)
        IL_011a:  nop
        IL_011b:  leave.s    IL_0139

      }  // end handler
      IL_011d:  ldarg.0
      IL_011e:  ldc.i4.s   -2
      IL_0120:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0125:  ldarg.0
      IL_0126:  ldnull
      IL_0127:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AnnouncementRecord> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<response>5__1'
      IL_012c:  ldarg.0
      IL_012d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
      IL_0132:  ldloc.1
      IL_0133:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::SetResult(!0)
      IL_0138:  nop
      IL_0139:  ret
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

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAnnouncementService::_supabase
    IL_000f:  ret
  } // end of method SupabaseAnnouncementService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 4F 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..OSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 6E 6E   // ices.SupabaseAnn
                                                                                                                                                   6F 75 6E 63 65 6D 65 6E 74 53 65 72 76 69 63 65   // ouncementService
                                                                                                                                                   2B 3C 47 65 74 41 6C 6C 41 73 79 6E 63 3E 64 5F   // +<GetAllAsync>d_
                                                                                                                                                   5F 32 00 00 )                                     // _2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::Start<class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>> SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement>>::get_Task()
    IL_0037:  ret
  } // end of method SupabaseAnnouncementService::GetAllAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement announcement) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 4F 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..OSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 6E 6E   // ices.SupabaseAnn
                                                                                                                                                   6F 75 6E 63 65 6D 65 6E 74 53 65 72 76 69 63 65   // ouncementService
                                                                                                                                                   2B 3C 43 72 65 61 74 65 41 73 79 6E 63 3E 64 5F   // +<CreateAsync>d_
                                                                                                                                                   5F 33 00 00 )                                     // _3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.Announcement SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::announcement
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAnnouncementService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method SupabaseAnnouncementService::CreateAsync

} // end of class SkoolComm.Infrastructure.Services.SupabaseAnnouncementService

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseAttendanceService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAttendanceService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAttendanceService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> '<>9__2_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> '<>9__2_1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> '<>9__2_2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary> '<>9__2_3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> '<>9__3_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,int32> '<>9__4_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,int32> '<>9__4_1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,class SkoolComm.Infrastructure.Models.AttendanceRecord> '<>9__4_2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance string 
            '<GetLearnersAsync>b__2_0'(class SkoolComm.Infrastructure.Models.LearnerRecord l) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Grade()
      IL_0006:  ret
    } // end of method '<>c'::'<GetLearnersAsync>b__2_0'

    .method assembly hidebysig instance string 
            '<GetLearnersAsync>b__2_1'(class SkoolComm.Infrastructure.Models.LearnerRecord l) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Class()
      IL_0006:  ret
    } // end of method '<>c'::'<GetLearnersAsync>b__2_1'

    .method assembly hidebysig instance string 
            '<GetLearnersAsync>b__2_2'(class SkoolComm.Infrastructure.Models.LearnerRecord l) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_LastName()
      IL_0006:  ret
    } // end of method '<>c'::'<GetLearnersAsync>b__2_2'

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary 
            '<GetLearnersAsync>b__2_3'(class SkoolComm.Infrastructure.Models.LearnerRecord l) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       71 (0x47)
      .maxstack  3
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.LearnerRecord::get_LearnerId()
      IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::set_LearnerId(int32)
      IL_0011:  nop
      IL_0012:  dup
      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_FirstName()
      IL_0019:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::set_FirstName(string)
      IL_001e:  nop
      IL_001f:  dup
      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_LastName()
      IL_0026:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::set_LastName(string)
      IL_002b:  nop
      IL_002c:  dup
      IL_002d:  ldarg.1
      IL_002e:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Grade()
      IL_0033:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::set_Grade(string)
      IL_0038:  nop
      IL_0039:  dup
      IL_003a:  ldarg.1
      IL_003b:  callvirt   instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Class()
      IL_0040:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary::set_Class(string)
      IL_0045:  nop
      IL_0046:  ret
    } // end of method '<>c'::'<GetLearnersAsync>b__2_3'

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry 
            '<GetByDateAsync>b__3_0'(class SkoolComm.Infrastructure.Models.AttendanceRecord a) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       32 (0x20)
      .maxstack  8
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.AttendanceRecord::get_LearnerId()
      IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::set_LearnerId(int32)
      IL_0011:  nop
      IL_0012:  dup
      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance string SkoolComm.Infrastructure.Models.AttendanceRecord::get_Status()
      IL_0019:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::set_Status(string)
      IL_001e:  nop
      IL_001f:  ret
    } // end of method '<>c'::'<GetByDateAsync>b__3_0'

    .method assembly hidebysig instance int32 
            '<SaveAsync>b__4_0'(class SkoolComm.Infrastructure.Models.AttendanceRecord r) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 SkoolComm.Infrastructure.Models.AttendanceRecord::get_LearnerId()
      IL_0006:  ret
    } // end of method '<>c'::'<SaveAsync>b__4_0'

    .method assembly hidebysig instance int32 
            '<SaveAsync>b__4_1'(class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> g) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance !0 class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>::get_Key()
      IL_0006:  ret
    } // end of method '<>c'::'<SaveAsync>b__4_1'

    .method assembly hidebysig instance class SkoolComm.Infrastructure.Models.AttendanceRecord 
            '<SaveAsync>b__4_2'(class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> g) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class SkoolComm.Infrastructure.Models.AttendanceRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0006:  ret
    } // end of method '<>c'::'<SaveAsync>b__4_2'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<GetByDateAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public valuetype [System.Runtime]System.DateTime 'date'
    .field public class SkoolComm.Infrastructure.Services.SupabaseAttendanceService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> '<response>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> '<>s__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> '<>u__1'
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
    } // end of method '<GetByDateAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       305 (0x131)
      .maxstack  5
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0080

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>4__this'
        IL_0015:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
        IL_001a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AttendanceRecord>()
        IL_001f:  ldstr      "date"
        IL_0024:  ldc.i4.2
        IL_0025:  ldarg.0
        IL_0026:  ldflda     valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'date'
        IL_002b:  ldstr      "yyyy-MM-dd"
        IL_0030:  call       instance string [System.Runtime]System.DateTime::ToString(string)
        IL_0035:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Filter<string>(string,
                                                                                                                                                                                                                                                                      valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/Operator,
                                                                                                                                                                                                                                                                      !!0)
        IL_003a:  ldloca.s   V_3
        IL_003c:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0042:  ldloc.3
        IL_0043:  ldc.i4.2
        IL_0044:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                               valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_0049:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetAwaiter()
        IL_004e:  stloc.2
        IL_004f:  ldloca.s   V_2
        IL_0051:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::get_IsCompleted()
        IL_0056:  brtrue.s   IL_009c

        IL_0058:  ldarg.0
        IL_0059:  ldc.i4.0
        IL_005a:  dup
        IL_005b:  stloc.0
        IL_005c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
        IL_0061:  ldarg.0
        IL_0062:  ldloc.2
        IL_0063:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>u__1'
        IL_0068:  ldarg.0
        IL_0069:  stloc.s    V_4
        IL_006b:  ldarg.0
        IL_006c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
        IL_0071:  ldloca.s   V_2
        IL_0073:  ldloca.s   V_4
        IL_0075:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        !!1&)
        IL_007a:  nop
        IL_007b:  leave      IL_0130

        IL_0080:  ldarg.0
        IL_0081:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>u__1'
        IL_0086:  stloc.2
        IL_0087:  ldarg.0
        IL_0088:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>u__1'
        IL_008d:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>
        IL_0093:  ldarg.0
        IL_0094:  ldc.i4.m1
        IL_0095:  dup
        IL_0096:  stloc.0
        IL_0097:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
        IL_009c:  ldarg.0
        IL_009d:  ldloca.s   V_2
        IL_009f:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetResult()
        IL_00a4:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>s__2'
        IL_00a9:  ldarg.0
        IL_00aa:  ldarg.0
        IL_00ab:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>s__2'
        IL_00b0:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<response>5__1'
        IL_00b5:  ldarg.0
        IL_00b6:  ldnull
        IL_00b7:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>s__2'
        IL_00bc:  ldarg.0
        IL_00bd:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<response>5__1'
        IL_00c2:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::get_Models()
        IL_00c7:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__3_0'
        IL_00cc:  dup
        IL_00cd:  brtrue.s   IL_00e6

        IL_00cf:  pop
        IL_00d0:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_00d5:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<GetByDateAsync>b__3_0'(class SkoolComm.Infrastructure.Models.AttendanceRecord)
        IL_00db:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>::.ctor(object,
                                                                                                                                                                                                              native int)
        IL_00e0:  dup
        IL_00e1:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__3_0'
        IL_00e6:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.AttendanceRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                     class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00eb:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_00f0:  stloc.1
        IL_00f1:  leave.s    IL_0114

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00f3:  stloc.s    V_5
        IL_00f5:  ldarg.0
        IL_00f6:  ldc.i4.s   -2
        IL_00f8:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
        IL_00fd:  ldarg.0
        IL_00fe:  ldnull
        IL_00ff:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<response>5__1'
        IL_0104:  ldarg.0
        IL_0105:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
        IL_010a:  ldloc.s    V_5
        IL_010c:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::SetException(class [System.Runtime]System.Exception)
        IL_0111:  nop
        IL_0112:  leave.s    IL_0130

      }  // end handler
      IL_0114:  ldarg.0
      IL_0115:  ldc.i4.s   -2
      IL_0117:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
      IL_011c:  ldarg.0
      IL_011d:  ldnull
      IL_011e:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<response>5__1'
      IL_0123:  ldarg.0
      IL_0124:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
      IL_0129:  ldloc.1
      IL_012a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::SetResult(!0)
      IL_012f:  nop
      IL_0130:  ret
    } // end of method '<GetByDateAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetByDateAsync>d__3'::SetStateMachine

  } // end of class '<GetByDateAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<GetLearnersAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseAttendanceService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> '<response>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> '<>s__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>> '<>u__1'
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
    } // end of method '<GetLearnersAsync>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       386 (0x182)
      .maxstack  3
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0065

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>4__this'
        IL_0015:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
        IL_001a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.LearnerRecord>()
        IL_001f:  ldloca.s   V_3
        IL_0021:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0027:  ldloc.3
        IL_0028:  ldc.i4.2
        IL_0029:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.LearnerRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                            valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_002e:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>>::GetAwaiter()
        IL_0033:  stloc.2
        IL_0034:  ldloca.s   V_2
        IL_0036:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>>::get_IsCompleted()
        IL_003b:  brtrue.s   IL_0081

        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.0
        IL_003f:  dup
        IL_0040:  stloc.0
        IL_0041:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
        IL_0046:  ldarg.0
        IL_0047:  ldloc.2
        IL_0048:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>u__1'
        IL_004d:  ldarg.0
        IL_004e:  stloc.s    V_4
        IL_0050:  ldarg.0
        IL_0051:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
        IL_0056:  ldloca.s   V_2
        IL_0058:  ldloca.s   V_4
        IL_005a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      !!1&)
        IL_005f:  nop
        IL_0060:  leave      IL_0181

        IL_0065:  ldarg.0
        IL_0066:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>u__1'
        IL_006b:  stloc.2
        IL_006c:  ldarg.0
        IL_006d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>u__1'
        IL_0072:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>>
        IL_0078:  ldarg.0
        IL_0079:  ldc.i4.m1
        IL_007a:  dup
        IL_007b:  stloc.0
        IL_007c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
        IL_0081:  ldarg.0
        IL_0082:  ldloca.s   V_2
        IL_0084:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>>::GetResult()
        IL_0089:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>s__2'
        IL_008e:  ldarg.0
        IL_008f:  ldarg.0
        IL_0090:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>s__2'
        IL_0095:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<response>5__1'
        IL_009a:  ldarg.0
        IL_009b:  ldnull
        IL_009c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>s__2'
        IL_00a1:  ldarg.0
        IL_00a2:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<response>5__1'
        IL_00a7:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord>::get_Models()
        IL_00ac:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_0'
        IL_00b1:  dup
        IL_00b2:  brtrue.s   IL_00cb

        IL_00b4:  pop
        IL_00b5:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_00ba:  ldftn      instance string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<GetLearnersAsync>b__2_0'(class SkoolComm.Infrastructure.Models.LearnerRecord)
        IL_00c0:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string>::.ctor(object,
                                                                                                                                                  native int)
        IL_00c5:  dup
        IL_00c6:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_0'
        IL_00cb:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class SkoolComm.Infrastructure.Models.LearnerRecord,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                               class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00d0:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_1'
        IL_00d5:  dup
        IL_00d6:  brtrue.s   IL_00ef

        IL_00d8:  pop
        IL_00d9:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_00de:  ldftn      instance string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<GetLearnersAsync>b__2_1'(class SkoolComm.Infrastructure.Models.LearnerRecord)
        IL_00e4:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string>::.ctor(object,
                                                                                                                                                  native int)
        IL_00e9:  dup
        IL_00ea:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_1'
        IL_00ef:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::ThenBy<class SkoolComm.Infrastructure.Models.LearnerRecord,string>(class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00f4:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_2'
        IL_00f9:  dup
        IL_00fa:  brtrue.s   IL_0113

        IL_00fc:  pop
        IL_00fd:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_0102:  ldftn      instance string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<GetLearnersAsync>b__2_2'(class SkoolComm.Infrastructure.Models.LearnerRecord)
        IL_0108:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string>::.ctor(object,
                                                                                                                                                  native int)
        IL_010d:  dup
        IL_010e:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,string> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_2'
        IL_0113:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::ThenBy<class SkoolComm.Infrastructure.Models.LearnerRecord,string>(class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0118:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_3'
        IL_011d:  dup
        IL_011e:  brtrue.s   IL_0137

        IL_0120:  pop
        IL_0121:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_0126:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<GetLearnersAsync>b__2_3'(class SkoolComm.Infrastructure.Models.LearnerRecord)
        IL_012c:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>::.ctor(object,
                                                                                                                                                                                                          native int)
        IL_0131:  dup
        IL_0132:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.LearnerRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__2_3'
        IL_0137:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.LearnerRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_013c:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0141:  stloc.1
        IL_0142:  leave.s    IL_0165

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0144:  stloc.s    V_5
        IL_0146:  ldarg.0
        IL_0147:  ldc.i4.s   -2
        IL_0149:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
        IL_014e:  ldarg.0
        IL_014f:  ldnull
        IL_0150:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<response>5__1'
        IL_0155:  ldarg.0
        IL_0156:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
        IL_015b:  ldloc.s    V_5
        IL_015d:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::SetException(class [System.Runtime]System.Exception)
        IL_0162:  nop
        IL_0163:  leave.s    IL_0181

      }  // end handler
      IL_0165:  ldarg.0
      IL_0166:  ldc.i4.s   -2
      IL_0168:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
      IL_016d:  ldarg.0
      IL_016e:  ldnull
      IL_016f:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.LearnerRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<response>5__1'
      IL_0174:  ldarg.0
      IL_0175:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
      IL_017a:  ldloc.1
      IL_017b:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::SetResult(!0)
      IL_0180:  nop
      IL_0181:  ret
    } // end of method '<GetLearnersAsync>d__2'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetLearnersAsync>d__2'::SetStateMachine

  } // end of class '<GetLearnersAsync>d__2'

  .class auto ansi sealed nested private beforefieldinit '<SaveAsync>d__4'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public valuetype [System.Runtime]System.DateTime 'date'
    .field public int32 recordedBy
    .field public class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> entries
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseAttendanceService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.DateTime '<day>5__1'
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> '<existingResponse>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> '<existing>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> '<toInsert>5__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> '<>s__5'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> '<>s__6'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry '<entry>5__7'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private string '<status>5__8'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.AttendanceRecord '<record>5__9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> '<>u__1'
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
    } // end of method '<SaveAsync>d__4'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       1068 (0x42c)
      .maxstack  5
      .locals init (int32 V_0,
               bool V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4' V_4,
               bool V_5,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> V_6,
               bool V_7,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> V_8,
               class [System.Runtime]System.Exception V_9)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  switch     ( 
                              IL_001b,
                              IL_0020,
                              IL_0025)
        IL_0019:  br.s       IL_002a

        IL_001b:  br         IL_00c4

        IL_0020:  br         IL_0195

        IL_0025:  br         IL_03ab

        IL_002a:  nop
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::entries
        IL_0031:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>::get_Count()
        IL_0036:  ldc.i4.0
        IL_0037:  ceq
        IL_0039:  stloc.1
        IL_003a:  ldloc.1
        IL_003b:  brfalse.s  IL_0042

        IL_003d:  leave      IL_0402

        IL_0042:  ldarg.0
        IL_0043:  ldarg.0
        IL_0044:  ldflda     valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'date'
        IL_0049:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Date()
        IL_004e:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<day>5__1'
        IL_0053:  ldarg.0
        IL_0054:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>4__this'
        IL_0059:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
        IL_005e:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AttendanceRecord>()
        IL_0063:  ldstr      "date"
        IL_0068:  ldc.i4.2
        IL_0069:  ldarg.0
        IL_006a:  ldflda     valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<day>5__1'
        IL_006f:  ldstr      "yyyy-MM-dd"
        IL_0074:  call       instance string [System.Runtime]System.DateTime::ToString(string)
        IL_0079:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Filter<string>(string,
                                                                                                                                                                                                                                                                      valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/Operator,
                                                                                                                                                                                                                                                                      !!0)
        IL_007e:  ldloca.s   V_3
        IL_0080:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0086:  ldloc.3
        IL_0087:  ldc.i4.2
        IL_0088:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                               valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_008d:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetAwaiter()
        IL_0092:  stloc.2
        IL_0093:  ldloca.s   V_2
        IL_0095:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::get_IsCompleted()
        IL_009a:  brtrue.s   IL_00e0

        IL_009c:  ldarg.0
        IL_009d:  ldc.i4.0
        IL_009e:  dup
        IL_009f:  stloc.0
        IL_00a0:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
        IL_00a5:  ldarg.0
        IL_00a6:  ldloc.2
        IL_00a7:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_00ac:  ldarg.0
        IL_00ad:  stloc.s    V_4
        IL_00af:  ldarg.0
        IL_00b0:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
        IL_00b5:  ldloca.s   V_2
        IL_00b7:  ldloca.s   V_4
        IL_00b9:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                         !!1&)
        IL_00be:  nop
        IL_00bf:  leave      IL_042b

        IL_00c4:  ldarg.0
        IL_00c5:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_00ca:  stloc.2
        IL_00cb:  ldarg.0
        IL_00cc:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_00d1:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>
        IL_00d7:  ldarg.0
        IL_00d8:  ldc.i4.m1
        IL_00d9:  dup
        IL_00da:  stloc.0
        IL_00db:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
        IL_00e0:  ldarg.0
        IL_00e1:  ldloca.s   V_2
        IL_00e3:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetResult()
        IL_00e8:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__5'
        IL_00ed:  ldarg.0
        IL_00ee:  ldarg.0
        IL_00ef:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__5'
        IL_00f4:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existingResponse>5__2'
        IL_00f9:  ldarg.0
        IL_00fa:  ldnull
        IL_00fb:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__5'
        IL_0100:  ldarg.0
        IL_0101:  ldarg.0
        IL_0102:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existingResponse>5__2'
        IL_0107:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::get_Models()
        IL_010c:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,int32> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_0'
        IL_0111:  dup
        IL_0112:  brtrue.s   IL_012b

        IL_0114:  pop
        IL_0115:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_011a:  ldftn      instance int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<SaveAsync>b__4_0'(class SkoolComm.Infrastructure.Models.AttendanceRecord)
        IL_0120:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,int32>::.ctor(object,
                                                                                                                                                    native int)
        IL_0125:  dup
        IL_0126:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.AttendanceRecord,int32> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_0'
        IL_012b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Linq]System.Linq.IGrouping`2<!!1,!!0>> [System.Linq]System.Linq.Enumerable::GroupBy<class SkoolComm.Infrastructure.Models.AttendanceRecord,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                            class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0130:  ldsfld     class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,int32> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_1'
        IL_0135:  dup
        IL_0136:  brtrue.s   IL_014f

        IL_0138:  pop
        IL_0139:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_013e:  ldftn      instance int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<SaveAsync>b__4_1'(class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>)
        IL_0144:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,int32>::.ctor(object,
                                                                                                                                                                                                      native int)
        IL_0149:  dup
        IL_014a:  stsfld     class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,int32> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_1'
        IL_014f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_2'
        IL_0154:  dup
        IL_0155:  brtrue.s   IL_016e

        IL_0157:  pop
        IL_0158:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c' SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9'
        IL_015d:  ldftn      instance class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<SaveAsync>b__4_2'(class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>)
        IL_0163:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,class SkoolComm.Infrastructure.Models.AttendanceRecord>::.ctor(object,
                                                                                                                                                                                                                                                       native int)
        IL_0168:  dup
        IL_0169:  stsfld     class [System.Runtime]System.Func`2<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<>c'::'<>9__4_2'
        IL_016e:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<!!1,!!2> [System.Linq]System.Linq.Enumerable::ToDictionary<class [System.Linq]System.Linq.IGrouping`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>,int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>,
                                                                                                                                                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!2>)
        IL_0173:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existing>5__3'
        IL_0178:  ldarg.0
        IL_0179:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::.ctor()
        IL_017e:  stfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
        IL_0183:  nop
        IL_0184:  ldarg.0
        IL_0185:  ldarg.0
        IL_0186:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::entries
        IL_018b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>::GetEnumerator()
        IL_0190:  stfld      valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__6'
        IL_0195:  nop
        .try
        {
          IL_0196:  ldloc.0
          IL_0197:  ldc.i4.1
          IL_0198:  beq.s      IL_019c

          IL_019a:  br.s       IL_01a1

          IL_019c:  br         IL_0276

          IL_01a1:  br         IL_0300

          IL_01a6:  ldarg.0
          IL_01a7:  ldarg.0
          IL_01a8:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__6'
          IL_01ad:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>::get_Current()
          IL_01b2:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<entry>5__7'
          IL_01b7:  nop
          IL_01b8:  ldarg.0
          IL_01b9:  ldarg.0
          IL_01ba:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<entry>5__7'
          IL_01bf:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::get_Status()
          IL_01c4:  callvirt   instance string [System.Runtime]System.String::ToLowerInvariant()
          IL_01c9:  stfld      string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<status>5__8'
          IL_01ce:  ldarg.0
          IL_01cf:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existing>5__3'
          IL_01d4:  ldarg.0
          IL_01d5:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<entry>5__7'
          IL_01da:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::get_LearnerId()
          IL_01df:  ldarg.0
          IL_01e0:  ldflda     class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<record>5__9'
          IL_01e5:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord>::TryGetValue(!0,
                                                                                                                                                                                          !1&)
          IL_01ea:  stloc.s    V_5
          IL_01ec:  ldloc.s    V_5
          IL_01ee:  brfalse    IL_029e

          IL_01f3:  nop
          IL_01f4:  ldarg.0
          IL_01f5:  ldfld      class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<record>5__9'
          IL_01fa:  ldarg.0
          IL_01fb:  ldfld      string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<status>5__8'
          IL_0200:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_Status(string)
          IL_0205:  nop
          IL_0206:  ldarg.0
          IL_0207:  ldfld      class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<record>5__9'
          IL_020c:  ldarg.0
          IL_020d:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::recordedBy
          IL_0212:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_RecordedBy(int32)
          IL_0217:  nop
          IL_0218:  ldarg.0
          IL_0219:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>4__this'
          IL_021e:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
          IL_0223:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AttendanceRecord>()
          IL_0228:  ldarg.0
          IL_0229:  ldfld      class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<record>5__9'
          IL_022e:  ldnull
          IL_022f:  ldloca.s   V_3
          IL_0231:  initobj    [System.Runtime]System.Threading.CancellationToken
          IL_0237:  ldloc.3
          IL_0238:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Update(!0,
                                                                                                                                                                                                                                                                                                                    class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                    valuetype [System.Runtime]System.Threading.CancellationToken)
          IL_023d:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetAwaiter()
          IL_0242:  stloc.s    V_6
          IL_0244:  ldloca.s   V_6
          IL_0246:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::get_IsCompleted()
          IL_024b:  brtrue.s   IL_0293

          IL_024d:  ldarg.0
          IL_024e:  ldc.i4.1
          IL_024f:  dup
          IL_0250:  stloc.0
          IL_0251:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
          IL_0256:  ldarg.0
          IL_0257:  ldloc.s    V_6
          IL_0259:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
          IL_025e:  ldarg.0
          IL_025f:  stloc.s    V_4
          IL_0261:  ldarg.0
          IL_0262:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
          IL_0267:  ldloca.s   V_6
          IL_0269:  ldloca.s   V_4
          IL_026b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                           !!1&)
          IL_0270:  nop
          IL_0271:  leave      IL_042b

          IL_0276:  ldarg.0
          IL_0277:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
          IL_027c:  stloc.s    V_6
          IL_027e:  ldarg.0
          IL_027f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
          IL_0284:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>
          IL_028a:  ldarg.0
          IL_028b:  ldc.i4.m1
          IL_028c:  dup
          IL_028d:  stloc.0
          IL_028e:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
          IL_0293:  ldloca.s   V_6
          IL_0295:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetResult()
          IL_029a:  pop
          IL_029b:  nop
          IL_029c:  br.s       IL_02ea

          IL_029e:  nop
          IL_029f:  ldarg.0
          IL_02a0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
          IL_02a5:  newobj     instance void SkoolComm.Infrastructure.Models.AttendanceRecord::.ctor()
          IL_02aa:  dup
          IL_02ab:  ldarg.0
          IL_02ac:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<entry>5__7'
          IL_02b1:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry::get_LearnerId()
          IL_02b6:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_LearnerId(int32)
          IL_02bb:  nop
          IL_02bc:  dup
          IL_02bd:  ldarg.0
          IL_02be:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::recordedBy
          IL_02c3:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_RecordedBy(int32)
          IL_02c8:  nop
          IL_02c9:  dup
          IL_02ca:  ldarg.0
          IL_02cb:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<day>5__1'
          IL_02d0:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_Date(valuetype [System.Runtime]System.DateTime)
          IL_02d5:  nop
          IL_02d6:  dup
          IL_02d7:  ldarg.0
          IL_02d8:  ldfld      string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<status>5__8'
          IL_02dd:  callvirt   instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_Status(string)
          IL_02e2:  nop
          IL_02e3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Add(!0)
          IL_02e8:  nop
          IL_02e9:  nop
          IL_02ea:  nop
          IL_02eb:  ldarg.0
          IL_02ec:  ldnull
          IL_02ed:  stfld      string SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<status>5__8'
          IL_02f2:  ldarg.0
          IL_02f3:  ldnull
          IL_02f4:  stfld      class SkoolComm.Infrastructure.Models.AttendanceRecord SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<record>5__9'
          IL_02f9:  ldarg.0
          IL_02fa:  ldnull
          IL_02fb:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<entry>5__7'
          IL_0300:  ldarg.0
          IL_0301:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__6'
          IL_0306:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>::MoveNext()
          IL_030b:  brtrue     IL_01a6

          IL_0310:  leave.s    IL_0329

        }  // end .try
        finally
        {
          IL_0312:  ldloc.0
          IL_0313:  ldc.i4.0
          IL_0314:  bge.s      IL_0328

          IL_0316:  ldarg.0
          IL_0317:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__6'
          IL_031c:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>
          IL_0322:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0327:  nop
          IL_0328:  endfinally
        }  // end handler
        IL_0329:  ldarg.0
        IL_032a:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>s__6'
        IL_032f:  initobj    valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>
        IL_0335:  ldarg.0
        IL_0336:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
        IL_033b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::get_Count()
        IL_0340:  ldc.i4.0
        IL_0341:  cgt
        IL_0343:  stloc.s    V_7
        IL_0345:  ldloc.s    V_7
        IL_0347:  brfalse    IL_03d1

        IL_034c:  nop
        IL_034d:  ldarg.0
        IL_034e:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>4__this'
        IL_0353:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
        IL_0358:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.AttendanceRecord>()
        IL_035d:  ldarg.0
        IL_035e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
        IL_0363:  ldnull
        IL_0364:  ldloca.s   V_3
        IL_0366:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_036c:  ldloc.3
        IL_036d:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>::Insert(class [System.Runtime]System.Collections.Generic.ICollection`1<!0>,
                                                                                                                                                                                                                                                                                                                  class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                  valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_0372:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetAwaiter()
        IL_0377:  stloc.s    V_8
        IL_0379:  ldloca.s   V_8
        IL_037b:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::get_IsCompleted()
        IL_0380:  brtrue.s   IL_03c8

        IL_0382:  ldarg.0
        IL_0383:  ldc.i4.2
        IL_0384:  dup
        IL_0385:  stloc.0
        IL_0386:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
        IL_038b:  ldarg.0
        IL_038c:  ldloc.s    V_8
        IL_038e:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_0393:  ldarg.0
        IL_0394:  stloc.s    V_4
        IL_0396:  ldarg.0
        IL_0397:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
        IL_039c:  ldloca.s   V_8
        IL_039e:  ldloca.s   V_4
        IL_03a0:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                         !!1&)
        IL_03a5:  nop
        IL_03a6:  leave      IL_042b

        IL_03ab:  ldarg.0
        IL_03ac:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_03b1:  stloc.s    V_8
        IL_03b3:  ldarg.0
        IL_03b4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>u__1'
        IL_03b9:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>
        IL_03bf:  ldarg.0
        IL_03c0:  ldc.i4.m1
        IL_03c1:  dup
        IL_03c2:  stloc.0
        IL_03c3:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
        IL_03c8:  ldloca.s   V_8
        IL_03ca:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord>>::GetResult()
        IL_03cf:  pop
        IL_03d0:  nop
        IL_03d1:  leave.s    IL_0402

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_03d3:  stloc.s    V_9
        IL_03d5:  ldarg.0
        IL_03d6:  ldc.i4.s   -2
        IL_03d8:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
        IL_03dd:  ldarg.0
        IL_03de:  ldnull
        IL_03df:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existingResponse>5__2'
        IL_03e4:  ldarg.0
        IL_03e5:  ldnull
        IL_03e6:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existing>5__3'
        IL_03eb:  ldarg.0
        IL_03ec:  ldnull
        IL_03ed:  stfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
        IL_03f2:  ldarg.0
        IL_03f3:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
        IL_03f8:  ldloc.s    V_9
        IL_03fa:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_03ff:  nop
        IL_0400:  leave.s    IL_042b

      }  // end handler
      IL_0402:  ldarg.0
      IL_0403:  ldc.i4.s   -2
      IL_0405:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
      IL_040a:  ldarg.0
      IL_040b:  ldnull
      IL_040c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existingResponse>5__2'
      IL_0411:  ldarg.0
      IL_0412:  ldnull
      IL_0413:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<existing>5__3'
      IL_0418:  ldarg.0
      IL_0419:  ldnull
      IL_041a:  stfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.AttendanceRecord> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<toInsert>5__4'
      IL_041f:  ldarg.0
      IL_0420:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
      IL_0425:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_042a:  nop
      IL_042b:  ret
    } // end of method '<SaveAsync>d__4'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<SaveAsync>d__4'::SetStateMachine

  } // end of class '<SaveAsync>d__4'

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAttendanceService::_supabase
    IL_000f:  ret
  } // end of method SupabaseAttendanceService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> 
          GetLearnersAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 52 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..RSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 74 74   // ices.SupabaseAtt
                                                                                                                                                   65 6E 64 61 6E 63 65 53 65 72 76 69 63 65 2B 3C   // endanceService+<
                                                                                                                                                   47 65 74 4C 65 61 72 6E 65 72 73 41 73 79 6E 63   // GetLearnersAsync
                                                                                                                                                   3E 64 5F 5F 32 00 00 )                            // >d__2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::Start<class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetLearnersAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.LearnerSummary>>::get_Task()
    IL_0037:  ret
  } // end of method SupabaseAttendanceService::GetLearnersAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> 
          GetByDateAsync(valuetype [System.Runtime]System.DateTime 'date') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 50 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..PSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 74 74   // ices.SupabaseAtt
                                                                                                                                                   65 6E 64 61 6E 63 65 53 65 72 76 69 63 65 2B 3C   // endanceService+<
                                                                                                                                                   47 65 74 42 79 44 61 74 65 41 73 79 6E 63 3E 64   // GetByDateAsync>d
                                                                                                                                                   5F 5F 33 00 00 )                                  // __3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'date'
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::Start<class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<GetByDateAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry>>::get_Task()
    IL_003e:  ret
  } // end of method SupabaseAttendanceService::GetByDateAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          SaveAsync(valuetype [System.Runtime]System.DateTime 'date',
                    int32 recordedBy,
                    class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> entries) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 4B 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..KSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 74 74   // ices.SupabaseAtt
                                                                                                                                                   65 6E 64 61 6E 63 65 53 65 72 76 69 63 65 2B 3C   // endanceService+<
                                                                                                                                                   53 61 76 65 41 73 79 6E 63 3E 64 5F 5F 34 00 00 ) // SaveAsync>d__4..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       77 (0x4d)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAttendanceService SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'date'
    IL_001f:  ldloc.0
    IL_0020:  ldarg.2
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::recordedBy
    IL_0026:  ldloc.0
    IL_0027:  ldarg.3
    IL_0028:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AttendanceEntry> SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::entries
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.m1
    IL_002f:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>1__state'
    IL_0034:  ldloc.0
    IL_0035:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
    IL_003a:  ldloca.s   V_0
    IL_003c:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'>(!!0&)
    IL_0041:  ldloc.0
    IL_0042:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseAttendanceService/'<SaveAsync>d__4'::'<>t__builder'
    IL_0047:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_004c:  ret
  } // end of method SupabaseAttendanceService::SaveAsync

} // end of class SkoolComm.Infrastructure.Services.SupabaseAttendanceService

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseAuthService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAuthService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IAuthService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [Supabase.Gotrue]Supabase.Gotrue.Session response
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<LoginAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public string email
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public string password
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseAuthService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<staffResponse>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.StaffRecord '<staff>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Gotrue]Supabase.Gotrue.Session '<>s__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<>s__5'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [System.Runtime]System.Exception '<ex>5__6'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 02 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> '<>u__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__3'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<LoginAsync>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       1035 (0x40b)
      .maxstack  6
      .locals init (int32 V_0,
               class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session> V_2,
               class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2' V_3,
               bool V_4,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> V_5,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_6,
               valuetype [System.Runtime]System.Threading.CancellationToken V_7,
               bool V_8,
               bool V_9,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_10,
               class [System.Runtime]System.Exception V_11)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  ldc.i4.2
        IL_0009:  ble.un.s   IL_000d

        IL_000b:  br.s       IL_000f

        IL_000d:  br.s       IL_0010

        IL_000f:  nop
        IL_0010:  nop
        .try
        {
          IL_0011:  ldloc.0
          IL_0012:  switch     ( 
                                IL_0025,
                                IL_0027,
                                IL_002c)
          IL_0023:  br.s       IL_0031

          IL_0025:  br.s       IL_0094

          IL_0027:  br         IL_01f8

          IL_002c:  br         IL_02eb

          IL_0031:  ldarg.0
          IL_0032:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'::.ctor()
          IL_0037:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>8__1'
          IL_003c:  nop
          IL_003d:  ldarg.0
          IL_003e:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>4__this'
          IL_0043:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAuthService::_supabase
          IL_0048:  callvirt   instance class [Supabase.Gotrue]Supabase.Gotrue.Interfaces.IGotrueClient`2<class [Supabase.Gotrue]Supabase.Gotrue.User,class [Supabase.Gotrue]Supabase.Gotrue.Session> [Supabase]Supabase.Client::get_Auth()
          IL_004d:  ldarg.0
          IL_004e:  ldfld      string SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::email
          IL_0053:  ldarg.0
          IL_0054:  ldfld      string SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::password
          IL_0059:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<!1> class [Supabase.Gotrue]Supabase.Gotrue.Interfaces.IGotrueClient`2<class [Supabase.Gotrue]Supabase.Gotrue.User,class [Supabase.Gotrue]Supabase.Gotrue.Session>::SignInWithPassword(string,
                                                                                                                                                                                                                                                                                  string)
          IL_005e:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Gotrue]Supabase.Gotrue.Session>::GetAwaiter()
          IL_0063:  stloc.2
          IL_0064:  ldloca.s   V_2
          IL_0066:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session>::get_IsCompleted()
          IL_006b:  brtrue.s   IL_00b0

          IL_006d:  ldarg.0
          IL_006e:  ldc.i4.0
          IL_006f:  dup
          IL_0070:  stloc.0
          IL_0071:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_0076:  ldarg.0
          IL_0077:  ldloc.2
          IL_0078:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__1'
          IL_007d:  ldarg.0
          IL_007e:  stloc.3
          IL_007f:  ldarg.0
          IL_0080:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
          IL_0085:  ldloca.s   V_2
          IL_0087:  ldloca.s   V_3
          IL_0089:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session>,class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                            !!1&)
          IL_008e:  nop
          IL_008f:  leave      IL_040a

          IL_0094:  ldarg.0
          IL_0095:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__1'
          IL_009a:  stloc.2
          IL_009b:  ldarg.0
          IL_009c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__1'
          IL_00a1:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session>
          IL_00a7:  ldarg.0
          IL_00a8:  ldc.i4.m1
          IL_00a9:  dup
          IL_00aa:  stloc.0
          IL_00ab:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_00b0:  ldarg.0
          IL_00b1:  ldloca.s   V_2
          IL_00b3:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Gotrue]Supabase.Gotrue.Session>::GetResult()
          IL_00b8:  stfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__4'
          IL_00bd:  ldarg.0
          IL_00be:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>8__1'
          IL_00c3:  ldarg.0
          IL_00c4:  ldfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__4'
          IL_00c9:  stfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'::response
          IL_00ce:  ldarg.0
          IL_00cf:  ldnull
          IL_00d0:  stfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__4'
          IL_00d5:  ldarg.0
          IL_00d6:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>8__1'
          IL_00db:  ldfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'::response
          IL_00e0:  callvirt   instance class [Supabase.Gotrue]Supabase.Gotrue.User [Supabase.Gotrue]Supabase.Gotrue.Session::get_User()
          IL_00e5:  ldnull
          IL_00e6:  ceq
          IL_00e8:  stloc.s    V_4
          IL_00ea:  ldloc.s    V_4
          IL_00ec:  brfalse.s  IL_010e

          IL_00ee:  nop
          IL_00ef:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::.ctor()
          IL_00f4:  dup
          IL_00f5:  ldc.i4.0
          IL_00f6:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Success(bool)
          IL_00fb:  nop
          IL_00fc:  dup
          IL_00fd:  ldstr      "Invalid email or password."
          IL_0102:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Message(string)
          IL_0107:  nop
          IL_0108:  stloc.1
          IL_0109:  leave      IL_03f5

          IL_010e:  ldarg.0
          IL_010f:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>4__this'
          IL_0114:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAuthService::_supabase
          IL_0119:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StaffRecord>()
          IL_011e:  ldtoken    SkoolComm.Infrastructure.Models.StaffRecord
          IL_0123:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
          IL_0128:  ldstr      "staff"
          IL_012d:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                                 string)
          IL_0132:  stloc.s    V_6
          IL_0134:  ldloc.s    V_6
          IL_0136:  ldtoken    method instance string SkoolComm.Infrastructure.Models.StaffRecord::get_AuthUserId()
          IL_013b:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
          IL_0140:  castclass  [System.Runtime]System.Reflection.MethodInfo
          IL_0145:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                             class [System.Runtime]System.Reflection.MethodInfo)
          IL_014a:  ldarg.0
          IL_014b:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>8__1'
          IL_0150:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'
          IL_0155:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
          IL_015a:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                               class [System.Runtime]System.Type)
          IL_015f:  ldtoken    field class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'::response
          IL_0164:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
          IL_0169:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                          class [System.Runtime]System.Reflection.FieldInfo)
          IL_016e:  ldtoken    method instance class [Supabase.Gotrue]Supabase.Gotrue.User [Supabase.Gotrue]Supabase.Gotrue.Session::get_User()
          IL_0173:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
          IL_0178:  castclass  [System.Runtime]System.Reflection.MethodInfo
          IL_017d:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                             class [System.Runtime]System.Reflection.MethodInfo)
          IL_0182:  ldtoken    method instance string [Supabase.Gotrue]Supabase.Gotrue.User::get_Id()
          IL_0187:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
          IL_018c:  castclass  [System.Runtime]System.Reflection.MethodInfo
          IL_0191:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                             class [System.Runtime]System.Reflection.MethodInfo)
          IL_0196:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                          class [System.Linq.Expressions]System.Linq.Expressions.Expression)
          IL_019b:  ldc.i4.1
          IL_019c:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
          IL_01a1:  dup
          IL_01a2:  ldc.i4.0
          IL_01a3:  ldloc.s    V_6
          IL_01a5:  stelem.ref
          IL_01a6:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                         class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
          IL_01ab:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
          IL_01b0:  ldloca.s   V_7
          IL_01b2:  initobj    [System.Runtime]System.Threading.CancellationToken
          IL_01b8:  ldloc.s    V_7
          IL_01ba:  ldc.i4.2
          IL_01bb:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                            valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
          IL_01c0:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetAwaiter()
          IL_01c5:  stloc.s    V_5
          IL_01c7:  ldloca.s   V_5
          IL_01c9:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::get_IsCompleted()
          IL_01ce:  brtrue.s   IL_0215

          IL_01d0:  ldarg.0
          IL_01d1:  ldc.i4.1
          IL_01d2:  dup
          IL_01d3:  stloc.0
          IL_01d4:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_01d9:  ldarg.0
          IL_01da:  ldloc.s    V_5
          IL_01dc:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__2'
          IL_01e1:  ldarg.0
          IL_01e2:  stloc.3
          IL_01e3:  ldarg.0
          IL_01e4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
          IL_01e9:  ldloca.s   V_5
          IL_01eb:  ldloca.s   V_3
          IL_01ed:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>,class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         !!1&)
          IL_01f2:  nop
          IL_01f3:  leave      IL_040a

          IL_01f8:  ldarg.0
          IL_01f9:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__2'
          IL_01fe:  stloc.s    V_5
          IL_0200:  ldarg.0
          IL_0201:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__2'
          IL_0206:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>
          IL_020c:  ldarg.0
          IL_020d:  ldc.i4.m1
          IL_020e:  dup
          IL_020f:  stloc.0
          IL_0210:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_0215:  ldarg.0
          IL_0216:  ldloca.s   V_5
          IL_0218:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetResult()
          IL_021d:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__5'
          IL_0222:  ldarg.0
          IL_0223:  ldarg.0
          IL_0224:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__5'
          IL_0229:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staffResponse>5__2'
          IL_022e:  ldarg.0
          IL_022f:  ldnull
          IL_0230:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>s__5'
          IL_0235:  ldarg.0
          IL_0236:  ldarg.0
          IL_0237:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staffResponse>5__2'
          IL_023c:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>::get_Models()
          IL_0241:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Infrastructure.Models.StaffRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
          IL_0246:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_024b:  ldarg.0
          IL_024c:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_0251:  ldnull
          IL_0252:  ceq
          IL_0254:  stloc.s    V_8
          IL_0256:  ldloc.s    V_8
          IL_0258:  brfalse.s  IL_027a

          IL_025a:  nop
          IL_025b:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::.ctor()
          IL_0260:  dup
          IL_0261:  ldc.i4.0
          IL_0262:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Success(bool)
          IL_0267:  nop
          IL_0268:  dup
          IL_0269:  ldstr      "No matching staff account was found."
          IL_026e:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Message(string)
          IL_0273:  nop
          IL_0274:  stloc.1
          IL_0275:  leave      IL_03f5

          IL_027a:  ldarg.0
          IL_027b:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_0280:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Status()
          IL_0285:  ldstr      "active"
          IL_028a:  ldc.i4.5
          IL_028b:  call       bool [System.Runtime]System.String::Equals(string,
                                                                          string,
                                                                          valuetype [System.Runtime]System.StringComparison)
          IL_0290:  ldc.i4.0
          IL_0291:  ceq
          IL_0293:  stloc.s    V_9
          IL_0295:  ldloc.s    V_9
          IL_0297:  brfalse    IL_032f

          IL_029c:  nop
          IL_029d:  ldarg.0
          IL_029e:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>4__this'
          IL_02a3:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAuthService::_supabase
          IL_02a8:  callvirt   instance class [Supabase.Gotrue]Supabase.Gotrue.Interfaces.IGotrueClient`2<class [Supabase.Gotrue]Supabase.Gotrue.User,class [Supabase.Gotrue]Supabase.Gotrue.Session> [Supabase]Supabase.Client::get_Auth()
          IL_02ad:  ldc.i4.0
          IL_02ae:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task class [Supabase.Gotrue]Supabase.Gotrue.Interfaces.IGotrueClient`2<class [Supabase.Gotrue]Supabase.Gotrue.User,class [Supabase.Gotrue]Supabase.Gotrue.Session>::SignOut(valuetype [Supabase.Gotrue]Supabase.Gotrue.Constants/SignOutScope)
          IL_02b3:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
          IL_02b8:  stloc.s    V_10
          IL_02ba:  ldloca.s   V_10
          IL_02bc:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
          IL_02c1:  brtrue.s   IL_0308

          IL_02c3:  ldarg.0
          IL_02c4:  ldc.i4.2
          IL_02c5:  dup
          IL_02c6:  stloc.0
          IL_02c7:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_02cc:  ldarg.0
          IL_02cd:  ldloc.s    V_10
          IL_02cf:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__3'
          IL_02d4:  ldarg.0
          IL_02d5:  stloc.3
          IL_02d6:  ldarg.0
          IL_02d7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
          IL_02dc:  ldloca.s   V_10
          IL_02de:  ldloca.s   V_3
          IL_02e0:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                          !!1&)
          IL_02e5:  nop
          IL_02e6:  leave      IL_040a

          IL_02eb:  ldarg.0
          IL_02ec:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__3'
          IL_02f1:  stloc.s    V_10
          IL_02f3:  ldarg.0
          IL_02f4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>u__3'
          IL_02f9:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
          IL_02ff:  ldarg.0
          IL_0300:  ldc.i4.m1
          IL_0301:  dup
          IL_0302:  stloc.0
          IL_0303:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
          IL_0308:  ldloca.s   V_10
          IL_030a:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
          IL_030f:  nop
          IL_0310:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::.ctor()
          IL_0315:  dup
          IL_0316:  ldc.i4.0
          IL_0317:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Success(bool)
          IL_031c:  nop
          IL_031d:  dup
          IL_031e:  ldstr      "This staff account is not active."
          IL_0323:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Message(string)
          IL_0328:  nop
          IL_0329:  stloc.1
          IL_032a:  leave      IL_03f5

          IL_032f:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::.ctor()
          IL_0334:  dup
          IL_0335:  ldc.i4.1
          IL_0336:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Success(bool)
          IL_033b:  nop
          IL_033c:  dup
          IL_033d:  ldstr      "Login successful."
          IL_0342:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Message(string)
          IL_0347:  nop
          IL_0348:  dup
          IL_0349:  ldarg.0
          IL_034a:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>8__1'
          IL_034f:  ldfld      class [Supabase.Gotrue]Supabase.Gotrue.Session SkoolComm.Infrastructure.Services.SupabaseAuthService/'<>c__DisplayClass2_0'::response
          IL_0354:  callvirt   instance string [Supabase.Gotrue]Supabase.Gotrue.Session::get_AccessToken()
          IL_0359:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_AccessToken(string)
          IL_035e:  nop
          IL_035f:  dup
          IL_0360:  ldarg.0
          IL_0361:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_0366:  callvirt   instance int32 SkoolComm.Infrastructure.Models.StaffRecord::get_StaffId()
          IL_036b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
          IL_0370:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_StaffId(valuetype [System.Runtime]System.Nullable`1<int32>)
          IL_0375:  nop
          IL_0376:  dup
          IL_0377:  ldarg.0
          IL_0378:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_037d:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Email()
          IL_0382:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Email(string)
          IL_0387:  nop
          IL_0388:  dup
          IL_0389:  ldarg.0
          IL_038a:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<staff>5__3'
          IL_038f:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Role()
          IL_0394:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Role(string)
          IL_0399:  nop
          IL_039a:  stloc.1
          IL_039b:  leave.s    IL_03f5

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_039d:  stloc.s    V_11
          IL_039f:  ldarg.0
          IL_03a0:  ldloc.s    V_11
          IL_03a2:  stfld      class [System.Runtime]System.Exception SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<ex>5__6'
          IL_03a7:  nop
          IL_03a8:  ldarg.0
          IL_03a9:  ldfld      class [System.Runtime]System.Exception SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<ex>5__6'
          IL_03ae:  callvirt   instance string [System.Runtime]System.Object::ToString()
          IL_03b3:  call       void [System.Console]System.Console::WriteLine(string)
          IL_03b8:  nop
          IL_03b9:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::.ctor()
          IL_03be:  dup
          IL_03bf:  ldc.i4.0
          IL_03c0:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Success(bool)
          IL_03c5:  nop
          IL_03c6:  dup
          IL_03c7:  ldarg.0
          IL_03c8:  ldfld      class [System.Runtime]System.Exception SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<ex>5__6'
          IL_03cd:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
          IL_03d2:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult::set_Message(string)
          IL_03d7:  nop
          IL_03d8:  stloc.1
          IL_03d9:  leave.s    IL_03f5

        }  // end handler
      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_03db:  stloc.s    V_11
        IL_03dd:  ldarg.0
        IL_03de:  ldc.i4.s   -2
        IL_03e0:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
        IL_03e5:  ldarg.0
        IL_03e6:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
        IL_03eb:  ldloc.s    V_11
        IL_03ed:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::SetException(class [System.Runtime]System.Exception)
        IL_03f2:  nop
        IL_03f3:  leave.s    IL_040a

      }  // end handler
      IL_03f5:  ldarg.0
      IL_03f6:  ldc.i4.s   -2
      IL_03f8:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
      IL_03fd:  ldarg.0
      IL_03fe:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
      IL_0403:  ldloc.1
      IL_0404:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::SetResult(!0)
      IL_0409:  nop
      IL_040a:  ret
    } // end of method '<LoginAsync>d__2'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<LoginAsync>d__2'::SetStateMachine

  } // end of class '<LoginAsync>d__2'

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseAuthService::_supabase
    IL_000f:  ret
  } // end of method SupabaseAuthService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> 
          LoginAsync(string email,
                     string password) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 46 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..FSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 41 75 74   // ices.SupabaseAut
                                                                                                                                                   68 53 65 72 76 69 63 65 2B 3C 4C 6F 67 69 6E 41   // hService+<LoginA
                                                                                                                                                   73 79 6E 63 3E 64 5F 5F 32 00 00 )                // sync>d__2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       70 (0x46)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseAuthService SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      string SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::email
    IL_001f:  ldloc.0
    IL_0020:  ldarg.2
    IL_0021:  stfld      string SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::password
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.m1
    IL_0028:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>1__state'
    IL_002d:  ldloc.0
    IL_002e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::Start<class SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'>(!!0&)
    IL_003a:  ldloc.0
    IL_003b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult> SkoolComm.Infrastructure.Services.SupabaseAuthService/'<LoginAsync>d__2'::'<>t__builder'
    IL_0040:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.AuthResult>::get_Task()
    IL_0045:  ret
  } // end of method SupabaseAuthService::LoginAsync

} // end of class SkoolComm.Infrastructure.Services.SupabaseAuthService

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseBehaviourService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IBehaviourService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IBehaviourService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,valuetype [System.Runtime]System.DateTime> '<>9__2_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance valuetype [System.Runtime]System.DateTime 
            '<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.BehaviouralPointRecord r) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_DateRecorded()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string> initials
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry 
            '<GetAllAsync>b__1'(class SkoolComm.Infrastructure.Models.BehaviouralPointRecord r) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       159 (0x9f)
      .maxstack  5
      .locals init (string V_0)
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_PointId()
      IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_PointId(int32)
      IL_0011:  nop
      IL_0012:  dup
      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_LearnerId()
      IL_0019:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_LearnerId(int32)
      IL_001e:  nop
      IL_001f:  dup
      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_IssuedBy()
      IL_0026:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_IssuedBy(int32)
      IL_002b:  nop
      IL_002c:  dup
      IL_002d:  ldarg.1
      IL_002e:  callvirt   instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_OffenceCode()
      IL_0033:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_OffenceCode(string)
      IL_0038:  nop
      IL_0039:  dup
      IL_003a:  ldarg.1
      IL_003b:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Level()
      IL_0040:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_Level(int32)
      IL_0045:  nop
      IL_0046:  dup
      IL_0047:  ldarg.1
      IL_0048:  callvirt   instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_OffenceName()
      IL_004d:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_OffenceName(string)
      IL_0052:  nop
      IL_0053:  dup
      IL_0054:  ldarg.1
      IL_0055:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Points()
      IL_005a:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_Points(int32)
      IL_005f:  nop
      IL_0060:  dup
      IL_0061:  ldarg.1
      IL_0062:  callvirt   instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Reason()
      IL_0067:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_Reason(string)
      IL_006c:  nop
      IL_006d:  dup
      IL_006e:  ldarg.1
      IL_006f:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_DateRecorded()
      IL_0074:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_DateRecorded(valuetype [System.Runtime]System.DateTime)
      IL_0079:  nop
      IL_007a:  dup
      IL_007b:  ldarg.0
      IL_007c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0'::initials
      IL_0081:  ldarg.1
      IL_0082:  callvirt   instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_IssuedBy()
      IL_0087:  ldloca.s   V_0
      IL_0089:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string>::TryGetValue(!0,
                                                                                                                                      !1&)
      IL_008e:  brtrue.s   IL_0097

      IL_0090:  ldstr      ""
      IL_0095:  br.s       IL_0098

      IL_0097:  ldloc.0
      IL_0098:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::set_IssuedByInitials(string)
      IL_009d:  nop
      IL_009e:  ret
    } // end of method '<>c__DisplayClass2_0'::'<GetAllAsync>b__1'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<CreateAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry entry
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseBehaviourService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> '<>u__1'
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
    } // end of method '<CreateAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       360 (0x168)
      .maxstack  4
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> V_1,
               valuetype [System.Runtime]System.Threading.CancellationToken V_2,
               class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3' V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_0113

        IL_0011:  nop
        IL_0012:  ldarg.0
        IL_0013:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>4__this'
        IL_0018:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseBehaviourService::_supabase
        IL_001d:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>()
        IL_0022:  newobj     instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::.ctor()
        IL_0027:  dup
        IL_0028:  ldarg.0
        IL_0029:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_002e:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_LearnerId()
        IL_0033:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_LearnerId(int32)
        IL_0038:  nop
        IL_0039:  dup
        IL_003a:  ldarg.0
        IL_003b:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_0040:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_IssuedBy()
        IL_0045:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_IssuedBy(int32)
        IL_004a:  nop
        IL_004b:  dup
        IL_004c:  ldarg.0
        IL_004d:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_0052:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_OffenceCode()
        IL_0057:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_OffenceCode(string)
        IL_005c:  nop
        IL_005d:  dup
        IL_005e:  ldarg.0
        IL_005f:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_0064:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_Level()
        IL_0069:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Level(int32)
        IL_006e:  nop
        IL_006f:  dup
        IL_0070:  ldarg.0
        IL_0071:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_0076:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_OffenceName()
        IL_007b:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_OffenceName(string)
        IL_0080:  nop
        IL_0081:  dup
        IL_0082:  ldarg.0
        IL_0083:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_0088:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_Points()
        IL_008d:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Points(int32)
        IL_0092:  nop
        IL_0093:  dup
        IL_0094:  ldarg.0
        IL_0095:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_009a:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_Reason()
        IL_009f:  call       bool [System.Runtime]System.String::IsNullOrWhiteSpace(string)
        IL_00a4:  brtrue.s   IL_00b8

        IL_00a6:  ldarg.0
        IL_00a7:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_00ac:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_Reason()
        IL_00b1:  callvirt   instance string [System.Runtime]System.String::Trim()
        IL_00b6:  br.s       IL_00b9

        IL_00b8:  ldnull
        IL_00b9:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Reason(string)
        IL_00be:  nop
        IL_00bf:  dup
        IL_00c0:  ldarg.0
        IL_00c1:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
        IL_00c6:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry::get_DateRecorded()
        IL_00cb:  callvirt   instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_DateRecorded(valuetype [System.Runtime]System.DateTime)
        IL_00d0:  nop
        IL_00d1:  ldnull
        IL_00d2:  ldloca.s   V_2
        IL_00d4:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00da:  ldloc.2
        IL_00db:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>::Insert(!0,
                                                                                                                                                                                                                                                                                                                        class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                        valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_00e0:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::GetAwaiter()
        IL_00e5:  stloc.1
        IL_00e6:  ldloca.s   V_1
        IL_00e8:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::get_IsCompleted()
        IL_00ed:  brtrue.s   IL_012f

        IL_00ef:  ldarg.0
        IL_00f0:  ldc.i4.0
        IL_00f1:  dup
        IL_00f2:  stloc.0
        IL_00f3:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
        IL_00f8:  ldarg.0
        IL_00f9:  ldloc.1
        IL_00fa:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>u__1'
        IL_00ff:  ldarg.0
        IL_0100:  stloc.3
        IL_0101:  ldarg.0
        IL_0102:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
        IL_0107:  ldloca.s   V_1
        IL_0109:  ldloca.s   V_3
        IL_010b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>,class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                !!1&)
        IL_0110:  nop
        IL_0111:  leave.s    IL_0167

        IL_0113:  ldarg.0
        IL_0114:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>u__1'
        IL_0119:  stloc.1
        IL_011a:  ldarg.0
        IL_011b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>u__1'
        IL_0120:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>
        IL_0126:  ldarg.0
        IL_0127:  ldc.i4.m1
        IL_0128:  dup
        IL_0129:  stloc.0
        IL_012a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
        IL_012f:  ldloca.s   V_1
        IL_0131:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::GetResult()
        IL_0136:  pop
        IL_0137:  leave.s    IL_0153

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0139:  stloc.s    V_4
        IL_013b:  ldarg.0
        IL_013c:  ldc.i4.s   -2
        IL_013e:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
        IL_0143:  ldarg.0
        IL_0144:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
        IL_0149:  ldloc.s    V_4
        IL_014b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0150:  nop
        IL_0151:  leave.s    IL_0167

      }  // end handler
      IL_0153:  ldarg.0
      IL_0154:  ldc.i4.s   -2
      IL_0156:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
      IL_015b:  ldarg.0
      IL_015c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
      IL_0161:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0166:  nop
      IL_0167:  ret
    } // end of method '<CreateAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<CreateAsync>d__3'::SetStateMachine

  } // end of class '<CreateAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<GetAllAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseBehaviourService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> '<response>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> '<>s__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<staff>5__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<>s__5'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> '<>s__6'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.StaffRecord '<s>5__7'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> '<>u__2'
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
      // Code size       692 (0x2b4)
      .maxstack  4
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2' V_4,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> V_5,
               class [System.Runtime]System.Exception V_6)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        IL_000a:  br.s       IL_000c

        IL_000c:  ldloc.0
        IL_000d:  ldc.i4.1
        IL_000e:  beq.s      IL_0014

        IL_0010:  br.s       IL_0019

        IL_0012:  br.s       IL_007b

        IL_0014:  br         IL_00c7

        IL_0019:  ldarg.0
        IL_001a:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0'::.ctor()
        IL_001f:  stfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
        IL_0024:  nop
        IL_0025:  ldarg.0
        IL_0026:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>4__this'
        IL_002b:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseBehaviourService::_supabase
        IL_0030:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>()
        IL_0035:  ldloca.s   V_3
        IL_0037:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_003d:  ldloc.3
        IL_003e:  ldc.i4.2
        IL_003f:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                                     valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_0044:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::GetAwaiter()
        IL_0049:  stloc.2
        IL_004a:  ldloca.s   V_2
        IL_004c:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::get_IsCompleted()
        IL_0051:  brtrue.s   IL_0097

        IL_0053:  ldarg.0
        IL_0054:  ldc.i4.0
        IL_0055:  dup
        IL_0056:  stloc.0
        IL_0057:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
        IL_005c:  ldarg.0
        IL_005d:  ldloc.2
        IL_005e:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0063:  ldarg.0
        IL_0064:  stloc.s    V_4
        IL_0066:  ldarg.0
        IL_0067:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_006c:  ldloca.s   V_2
        IL_006e:  ldloca.s   V_4
        IL_0070:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>,class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         !!1&)
        IL_0075:  nop
        IL_0076:  leave      IL_02b3

        IL_007b:  ldarg.0
        IL_007c:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0081:  stloc.2
        IL_0082:  ldarg.0
        IL_0083:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0088:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>
        IL_008e:  ldarg.0
        IL_008f:  ldc.i4.m1
        IL_0090:  dup
        IL_0091:  stloc.0
        IL_0092:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0097:  ldarg.0
        IL_0098:  ldloca.s   V_2
        IL_009a:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>>::GetResult()
        IL_009f:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__3'
        IL_00a4:  ldarg.0
        IL_00a5:  ldarg.0
        IL_00a6:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__3'
        IL_00ab:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<response>5__2'
        IL_00b0:  ldarg.0
        IL_00b1:  ldnull
        IL_00b2:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__3'
        IL_00b7:  ldarg.0
        IL_00b8:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
        IL_00bd:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string>::.ctor()
        IL_00c2:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0'::initials
        IL_00c7:  nop
        .try
        {
          IL_00c8:  ldloc.0
          IL_00c9:  ldc.i4.1
          IL_00ca:  beq.s      IL_00ce

          IL_00cc:  br.s       IL_00d0

          IL_00ce:  br.s       IL_0129

          IL_00d0:  nop
          IL_00d1:  ldarg.0
          IL_00d2:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>4__this'
          IL_00d7:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseBehaviourService::_supabase
          IL_00dc:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StaffRecord>()
          IL_00e1:  ldloca.s   V_3
          IL_00e3:  initobj    [System.Runtime]System.Threading.CancellationToken
          IL_00e9:  ldloc.3
          IL_00ea:  ldc.i4.2
          IL_00eb:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                            valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
          IL_00f0:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetAwaiter()
          IL_00f5:  stloc.s    V_5
          IL_00f7:  ldloca.s   V_5
          IL_00f9:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::get_IsCompleted()
          IL_00fe:  brtrue.s   IL_0146

          IL_0100:  ldarg.0
          IL_0101:  ldc.i4.1
          IL_0102:  dup
          IL_0103:  stloc.0
          IL_0104:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
          IL_0109:  ldarg.0
          IL_010a:  ldloc.s    V_5
          IL_010c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__2'
          IL_0111:  ldarg.0
          IL_0112:  stloc.s    V_4
          IL_0114:  ldarg.0
          IL_0115:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
          IL_011a:  ldloca.s   V_5
          IL_011c:  ldloca.s   V_4
          IL_011e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>,class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                !!1&)
          IL_0123:  nop
          IL_0124:  leave      IL_02b3

          IL_0129:  ldarg.0
          IL_012a:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__2'
          IL_012f:  stloc.s    V_5
          IL_0131:  ldarg.0
          IL_0132:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>u__2'
          IL_0137:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>
          IL_013d:  ldarg.0
          IL_013e:  ldc.i4.m1
          IL_013f:  dup
          IL_0140:  stloc.0
          IL_0141:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
          IL_0146:  ldarg.0
          IL_0147:  ldloca.s   V_5
          IL_0149:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetResult()
          IL_014e:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__5'
          IL_0153:  ldarg.0
          IL_0154:  ldarg.0
          IL_0155:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__5'
          IL_015a:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<staff>5__4'
          IL_015f:  ldarg.0
          IL_0160:  ldnull
          IL_0161:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__5'
          IL_0166:  nop
          IL_0167:  ldarg.0
          IL_0168:  ldarg.0
          IL_0169:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<staff>5__4'
          IL_016e:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>::get_Models()
          IL_0173:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Infrastructure.Models.StaffRecord>::GetEnumerator()
          IL_0178:  stfld      valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__6'
          .try
          {
            IL_017d:  br.s       IL_01da

            IL_017f:  ldarg.0
            IL_0180:  ldarg.0
            IL_0181:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__6'
            IL_0186:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord>::get_Current()
            IL_018b:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<s>5__7'
            IL_0190:  nop
            IL_0191:  ldarg.0
            IL_0192:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
            IL_0197:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0'::initials
            IL_019c:  ldarg.0
            IL_019d:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<s>5__7'
            IL_01a2:  callvirt   instance int32 SkoolComm.Infrastructure.Models.StaffRecord::get_StaffId()
            IL_01a7:  ldarg.0
            IL_01a8:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<s>5__7'
            IL_01ad:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_FirstName()
            IL_01b2:  call       string SkoolComm.Infrastructure.Services.SupabaseBehaviourService::First(string)
            IL_01b7:  ldarg.0
            IL_01b8:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<s>5__7'
            IL_01bd:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_LastName()
            IL_01c2:  call       string SkoolComm.Infrastructure.Services.SupabaseBehaviourService::First(string)
            IL_01c7:  call       string [System.Runtime]System.String::Concat(string,
                                                                              string)
            IL_01cc:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,string>::set_Item(!0,
                                                                                                                                         !1)
            IL_01d1:  nop
            IL_01d2:  nop
            IL_01d3:  ldarg.0
            IL_01d4:  ldnull
            IL_01d5:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<s>5__7'
            IL_01da:  ldarg.0
            IL_01db:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__6'
            IL_01e0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord>::MoveNext()
            IL_01e5:  brtrue.s   IL_017f

            IL_01e7:  leave.s    IL_0200

          }  // end .try
          finally
          {
            IL_01e9:  ldloc.0
            IL_01ea:  ldc.i4.0
            IL_01eb:  bge.s      IL_01ff

            IL_01ed:  ldarg.0
            IL_01ee:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__6'
            IL_01f3:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord>
            IL_01f9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_01fe:  nop
            IL_01ff:  endfinally
          }  // end handler
          IL_0200:  ldarg.0
          IL_0201:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>s__6'
          IL_0206:  initobj    valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class SkoolComm.Infrastructure.Models.StaffRecord>
          IL_020c:  nop
          IL_020d:  ldarg.0
          IL_020e:  ldnull
          IL_020f:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<staff>5__4'
          IL_0214:  leave.s    IL_021b

        }  // end .try
        catch [System.Runtime]System.Object 
        {
          IL_0216:  pop
          IL_0217:  nop
          IL_0218:  nop
          IL_0219:  leave.s    IL_021b

        }  // end handler
        IL_021b:  ldarg.0
        IL_021c:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<response>5__2'
        IL_0221:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord>::get_Models()
        IL_0226:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::'<>9__2_0'
        IL_022b:  dup
        IL_022c:  brtrue.s   IL_0245

        IL_022e:  pop
        IL_022f:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::'<>9'
        IL_0234:  ldftn      instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::'<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.BehaviouralPointRecord)
        IL_023a:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,valuetype [System.Runtime]System.DateTime>::.ctor(object,
                                                                                                                                                                                              native int)
        IL_023f:  dup
        IL_0240:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c'::'<>9__2_0'
        IL_0245:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderByDescending<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,valuetype [System.Runtime]System.DateTime>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                     class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_024a:  ldarg.0
        IL_024b:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
        IL_0250:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0'::'<GetAllAsync>b__1'(class SkoolComm.Infrastructure.Models.BehaviouralPointRecord)
        IL_0256:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>::.ctor(object,
                                                                                                                                                                                                                   native int)
        IL_025b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0260:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0265:  stloc.1
        IL_0266:  leave.s    IL_0290

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0268:  stloc.s    V_6
        IL_026a:  ldarg.0
        IL_026b:  ldc.i4.s   -2
        IL_026d:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0272:  ldarg.0
        IL_0273:  ldnull
        IL_0274:  stfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
        IL_0279:  ldarg.0
        IL_027a:  ldnull
        IL_027b:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<response>5__2'
        IL_0280:  ldarg.0
        IL_0281:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0286:  ldloc.s    V_6
        IL_0288:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::SetException(class [System.Runtime]System.Exception)
        IL_028d:  nop
        IL_028e:  leave.s    IL_02b3

      }  // end handler
      IL_0290:  ldarg.0
      IL_0291:  ldc.i4.s   -2
      IL_0293:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0298:  ldarg.0
      IL_0299:  ldnull
      IL_029a:  stfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>8__1'
      IL_029f:  ldarg.0
      IL_02a0:  ldnull
      IL_02a1:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.BehaviouralPointRecord> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<response>5__2'
      IL_02a6:  ldarg.0
      IL_02a7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
      IL_02ac:  ldloc.1
      IL_02ad:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::SetResult(!0)
      IL_02b2:  nop
      IL_02b3:  ret
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

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseBehaviourService::_supabase
    IL_000f:  ret
  } // end of method SupabaseBehaviourService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 4C 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..LSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 42 65 68   // ices.SupabaseBeh
                                                                                                                                                   61 76 69 6F 75 72 53 65 72 76 69 63 65 2B 3C 47   // aviourService+<G
                                                                                                                                                   65 74 41 6C 6C 41 73 79 6E 63 3E 64 5F 5F 32 00   // etAllAsync>d__2.
                                                                                                                                                   00 ) 
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::Start<class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>> SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry>>::get_Task()
    IL_0037:  ret
  } // end of method SupabaseBehaviourService::GetAllAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry entry) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 4C 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..LSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 42 65 68   // ices.SupabaseBeh
                                                                                                                                                   61 76 69 6F 75 72 53 65 72 76 69 63 65 2B 3C 43   // aviourService+<C
                                                                                                                                                   72 65 61 74 65 41 73 79 6E 63 3E 64 5F 5F 33 00   // reateAsync>d__3.
                                                                                                                                                   00 ) 
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseBehaviourService SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.BehaviourEntry SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::entry
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseBehaviourService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method SupabaseBehaviourService::CreateAsync

  .method private hidebysig static string 
          First(string text) cil managed
  {
    .param [1]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrWhiteSpace(string)
    IL_0006:  brtrue.s   IL_001c

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_000e:  ldc.i4.0
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0015:  callvirt   instance string [System.Runtime]System.String::ToUpperInvariant()
    IL_001a:  br.s       IL_0021

    IL_001c:  ldstr      ""
    IL_0021:  ret
  } // end of method SupabaseBehaviourService::First

} // end of class SkoolComm.Infrastructure.Services.SupabaseBehaviourService

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseEventService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IEventService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IEventService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> '<>9__2_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> '<>9__2_1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem,valuetype [System.Runtime]System.DateTime> '<>9__2_2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c' SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem 
            '<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.EventRecord e) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       109 (0x6d)
      .maxstack  3
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::.ctor()
      IL_0005:  dup
      IL_0006:  ldstr      "event"
      IL_000b:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Kind(string)
      IL_0010:  nop
      IL_0011:  dup
      IL_0012:  ldarg.1
      IL_0013:  callvirt   instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_EventId()
      IL_0018:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Id(int32)
      IL_001d:  nop
      IL_001e:  dup
      IL_001f:  ldarg.1
      IL_0020:  callvirt   instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_StaffId()
      IL_0025:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_StaffId(int32)
      IL_002a:  nop
      IL_002b:  dup
      IL_002c:  ldarg.1
      IL_002d:  callvirt   instance string SkoolComm.Infrastructure.Models.EventRecord::get_Title()
      IL_0032:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Title(string)
      IL_0037:  nop
      IL_0038:  dup
      IL_0039:  ldarg.1
      IL_003a:  callvirt   instance string SkoolComm.Infrastructure.Models.EventRecord::get_Description()
      IL_003f:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Description(string)
      IL_0044:  nop
      IL_0045:  dup
      IL_0046:  ldarg.1
      IL_0047:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.EventRecord::get_EventDate()
      IL_004c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_StartDate(valuetype [System.Runtime]System.DateTime)
      IL_0051:  nop
      IL_0052:  dup
      IL_0053:  ldarg.1
      IL_0054:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.EventRecord::get_EventDate()
      IL_0059:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_EndDate(valuetype [System.Runtime]System.DateTime)
      IL_005e:  nop
      IL_005f:  dup
      IL_0060:  ldarg.1
      IL_0061:  callvirt   instance string SkoolComm.Infrastructure.Models.EventRecord::get_Location()
      IL_0066:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Location(string)
      IL_006b:  nop
      IL_006c:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_0'

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem 
            '<GetAllAsync>b__2_1'(class SkoolComm.Infrastructure.Models.YearPlanRecord p) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       96 (0x60)
      .maxstack  3
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::.ctor()
      IL_0005:  dup
      IL_0006:  ldstr      "yearplan"
      IL_000b:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Kind(string)
      IL_0010:  nop
      IL_0011:  dup
      IL_0012:  ldarg.1
      IL_0013:  callvirt   instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_YearPlanId()
      IL_0018:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Id(int32)
      IL_001d:  nop
      IL_001e:  dup
      IL_001f:  ldarg.1
      IL_0020:  callvirt   instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_StaffId()
      IL_0025:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_StaffId(int32)
      IL_002a:  nop
      IL_002b:  dup
      IL_002c:  ldarg.1
      IL_002d:  callvirt   instance string SkoolComm.Infrastructure.Models.YearPlanRecord::get_Title()
      IL_0032:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Title(string)
      IL_0037:  nop
      IL_0038:  dup
      IL_0039:  ldarg.1
      IL_003a:  callvirt   instance string SkoolComm.Infrastructure.Models.YearPlanRecord::get_Description()
      IL_003f:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_Description(string)
      IL_0044:  nop
      IL_0045:  dup
      IL_0046:  ldarg.1
      IL_0047:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::get_StartDate()
      IL_004c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_StartDate(valuetype [System.Runtime]System.DateTime)
      IL_0051:  nop
      IL_0052:  dup
      IL_0053:  ldarg.1
      IL_0054:  callvirt   instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::get_EndDate()
      IL_0059:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::set_EndDate(valuetype [System.Runtime]System.DateTime)
      IL_005e:  nop
      IL_005f:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_1'

    .method assembly hidebysig instance valuetype [System.Runtime]System.DateTime 
            '<GetAllAsync>b__2_2'(class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem i) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StartDate()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_2'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem item
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

  } // end of class '<>c__DisplayClass4_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi sealed nested private beforefieldinit '<CreateAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem item
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseEventService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> '<>u__2'
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
    } // end of method '<CreateAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       567 (0x237)
      .maxstack  4
      .locals init (int32 V_0,
               bool V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> V_2,
               valuetype [System.Runtime]System.DateTime V_3,
               valuetype [System.Runtime]System.Threading.CancellationToken V_4,
               class SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3' V_5,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> V_6,
               class [System.Runtime]System.Exception V_7)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        IL_000a:  br.s       IL_000c

        IL_000c:  ldloc.0
        IL_000d:  ldc.i4.1
        IL_000e:  beq.s      IL_0017

        IL_0010:  br.s       IL_001c

        IL_0012:  br         IL_0100

        IL_0017:  br         IL_01e0

        IL_001c:  nop
        IL_001d:  ldarg.0
        IL_001e:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_0023:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Kind()
        IL_0028:  ldstr      "yearplan"
        IL_002d:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                             string)
        IL_0032:  stloc.1
        IL_0033:  ldloc.1
        IL_0034:  brfalse    IL_012a

        IL_0039:  nop
        IL_003a:  ldarg.0
        IL_003b:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>4__this'
        IL_0040:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0045:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.YearPlanRecord>()
        IL_004a:  newobj     instance void SkoolComm.Infrastructure.Models.YearPlanRecord::.ctor()
        IL_004f:  dup
        IL_0050:  ldarg.0
        IL_0051:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_0056:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StaffId()
        IL_005b:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_StaffId(int32)
        IL_0060:  nop
        IL_0061:  dup
        IL_0062:  ldarg.0
        IL_0063:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_0068:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Title()
        IL_006d:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Title(string)
        IL_0072:  nop
        IL_0073:  dup
        IL_0074:  ldarg.0
        IL_0075:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_007a:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Description()
        IL_007f:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Description(string)
        IL_0084:  nop
        IL_0085:  dup
        IL_0086:  ldarg.0
        IL_0087:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_008c:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StartDate()
        IL_0091:  stloc.3
        IL_0092:  ldloca.s   V_3
        IL_0094:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Date()
        IL_0099:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_StartDate(valuetype [System.Runtime]System.DateTime)
        IL_009e:  nop
        IL_009f:  dup
        IL_00a0:  ldarg.0
        IL_00a1:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_00a6:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_EndDate()
        IL_00ab:  stloc.3
        IL_00ac:  ldloca.s   V_3
        IL_00ae:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Date()
        IL_00b3:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_EndDate(valuetype [System.Runtime]System.DateTime)
        IL_00b8:  nop
        IL_00b9:  ldnull
        IL_00ba:  ldloca.s   V_4
        IL_00bc:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00c2:  ldloc.s    V_4
        IL_00c4:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Insert(!0,
                                                                                                                                                                                                                                                                                                                class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_00c9:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetAwaiter()
        IL_00ce:  stloc.2
        IL_00cf:  ldloca.s   V_2
        IL_00d1:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::get_IsCompleted()
        IL_00d6:  brtrue.s   IL_011c

        IL_00d8:  ldarg.0
        IL_00d9:  ldc.i4.0
        IL_00da:  dup
        IL_00db:  stloc.0
        IL_00dc:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
        IL_00e1:  ldarg.0
        IL_00e2:  ldloc.2
        IL_00e3:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__1'
        IL_00e8:  ldarg.0
        IL_00e9:  stloc.s    V_5
        IL_00eb:  ldarg.0
        IL_00ec:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
        IL_00f1:  ldloca.s   V_2
        IL_00f3:  ldloca.s   V_5
        IL_00f5:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                    !!1&)
        IL_00fa:  nop
        IL_00fb:  leave      IL_0236

        IL_0100:  ldarg.0
        IL_0101:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__1'
        IL_0106:  stloc.2
        IL_0107:  ldarg.0
        IL_0108:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__1'
        IL_010d:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>
        IL_0113:  ldarg.0
        IL_0114:  ldc.i4.m1
        IL_0115:  dup
        IL_0116:  stloc.0
        IL_0117:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
        IL_011c:  ldloca.s   V_2
        IL_011e:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetResult()
        IL_0123:  pop
        IL_0124:  nop
        IL_0125:  br         IL_0206

        IL_012a:  nop
        IL_012b:  ldarg.0
        IL_012c:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>4__this'
        IL_0131:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0136:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.EventRecord>()
        IL_013b:  newobj     instance void SkoolComm.Infrastructure.Models.EventRecord::.ctor()
        IL_0140:  dup
        IL_0141:  ldarg.0
        IL_0142:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_0147:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StaffId()
        IL_014c:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_StaffId(int32)
        IL_0151:  nop
        IL_0152:  dup
        IL_0153:  ldarg.0
        IL_0154:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_0159:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Title()
        IL_015e:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Title(string)
        IL_0163:  nop
        IL_0164:  dup
        IL_0165:  ldarg.0
        IL_0166:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_016b:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Description()
        IL_0170:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Description(string)
        IL_0175:  nop
        IL_0176:  dup
        IL_0177:  ldarg.0
        IL_0178:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_017d:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StartDate()
        IL_0182:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_EventDate(valuetype [System.Runtime]System.DateTime)
        IL_0187:  nop
        IL_0188:  dup
        IL_0189:  ldarg.0
        IL_018a:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
        IL_018f:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Location()
        IL_0194:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Location(string)
        IL_0199:  nop
        IL_019a:  ldnull
        IL_019b:  ldloca.s   V_4
        IL_019d:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_01a3:  ldloc.s    V_4
        IL_01a5:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Insert(!0,
                                                                                                                                                                                                                                                                                                             class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                             valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_01aa:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetAwaiter()
        IL_01af:  stloc.s    V_6
        IL_01b1:  ldloca.s   V_6
        IL_01b3:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::get_IsCompleted()
        IL_01b8:  brtrue.s   IL_01fd

        IL_01ba:  ldarg.0
        IL_01bb:  ldc.i4.1
        IL_01bc:  dup
        IL_01bd:  stloc.0
        IL_01be:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
        IL_01c3:  ldarg.0
        IL_01c4:  ldloc.s    V_6
        IL_01c6:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__2'
        IL_01cb:  ldarg.0
        IL_01cc:  stloc.s    V_5
        IL_01ce:  ldarg.0
        IL_01cf:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
        IL_01d4:  ldloca.s   V_6
        IL_01d6:  ldloca.s   V_5
        IL_01d8:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                 !!1&)
        IL_01dd:  nop
        IL_01de:  leave.s    IL_0236

        IL_01e0:  ldarg.0
        IL_01e1:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__2'
        IL_01e6:  stloc.s    V_6
        IL_01e8:  ldarg.0
        IL_01e9:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>u__2'
        IL_01ee:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>
        IL_01f4:  ldarg.0
        IL_01f5:  ldc.i4.m1
        IL_01f6:  dup
        IL_01f7:  stloc.0
        IL_01f8:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
        IL_01fd:  ldloca.s   V_6
        IL_01ff:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetResult()
        IL_0204:  pop
        IL_0205:  nop
        IL_0206:  leave.s    IL_0222

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0208:  stloc.s    V_7
        IL_020a:  ldarg.0
        IL_020b:  ldc.i4.s   -2
        IL_020d:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
        IL_0212:  ldarg.0
        IL_0213:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
        IL_0218:  ldloc.s    V_7
        IL_021a:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_021f:  nop
        IL_0220:  leave.s    IL_0236

      }  // end handler
      IL_0222:  ldarg.0
      IL_0223:  ldc.i4.s   -2
      IL_0225:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
      IL_022a:  ldarg.0
      IL_022b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
      IL_0230:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0235:  nop
      IL_0236:  ret
    } // end of method '<CreateAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<CreateAsync>d__3'::SetStateMachine

  } // end of class '<CreateAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<DeleteAsync>d__5'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public string kind
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 id
    .field public class SkoolComm.Infrastructure.Services.SupabaseEventService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> '<>u__2'
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
    } // end of method '<DeleteAsync>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       600 (0x258)
      .maxstack  6
      .locals init (int32 V_0,
               bool V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> V_2,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_3,
               valuetype [System.Runtime]System.Threading.CancellationToken V_4,
               class SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5' V_5,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> V_6,
               class [System.Runtime]System.Exception V_7)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        IL_000a:  br.s       IL_000c

        IL_000c:  ldloc.0
        IL_000d:  ldc.i4.1
        IL_000e:  beq.s      IL_0017

        IL_0010:  br.s       IL_001c

        IL_0012:  br         IL_010e

        IL_0017:  br         IL_01f4

        IL_001c:  ldarg.0
        IL_001d:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'::.ctor()
        IL_0022:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
        IL_0027:  ldarg.0
        IL_0028:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
        IL_002d:  ldarg.0
        IL_002e:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::id
        IL_0033:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'::id
        IL_0038:  nop
        IL_0039:  ldarg.0
        IL_003a:  ldfld      string SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::kind
        IL_003f:  ldstr      "yearplan"
        IL_0044:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                             string)
        IL_0049:  stloc.1
        IL_004a:  ldloc.1
        IL_004b:  brfalse    IL_0137

        IL_0050:  ldarg.0
        IL_0051:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>4__this'
        IL_0056:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_005b:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.YearPlanRecord>()
        IL_0060:  ldtoken    SkoolComm.Infrastructure.Models.YearPlanRecord
        IL_0065:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_006a:  ldstr      "p"
        IL_006f:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0074:  stloc.3
        IL_0075:  ldloc.3
        IL_0076:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_YearPlanId()
        IL_007b:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_0080:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_0085:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_008a:  ldarg.0
        IL_008b:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
        IL_0090:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'
        IL_0095:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_009a:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_009f:  ldtoken    field int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'::id
        IL_00a4:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_00a9:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_00ae:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_00b3:  ldc.i4.1
        IL_00b4:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_00b9:  dup
        IL_00ba:  ldc.i4.0
        IL_00bb:  ldloc.3
        IL_00bc:  stelem.ref
        IL_00bd:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                          class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00c2:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00c7:  ldnull
        IL_00c8:  ldloca.s   V_4
        IL_00ca:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00d0:  ldloc.s    V_4
        IL_00d2:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Delete(class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_00d7:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetAwaiter()
        IL_00dc:  stloc.2
        IL_00dd:  ldloca.s   V_2
        IL_00df:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::get_IsCompleted()
        IL_00e4:  brtrue.s   IL_012a

        IL_00e6:  ldarg.0
        IL_00e7:  ldc.i4.0
        IL_00e8:  dup
        IL_00e9:  stloc.0
        IL_00ea:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
        IL_00ef:  ldarg.0
        IL_00f0:  ldloc.2
        IL_00f1:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__1'
        IL_00f6:  ldarg.0
        IL_00f7:  stloc.s    V_5
        IL_00f9:  ldarg.0
        IL_00fa:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
        IL_00ff:  ldloca.s   V_2
        IL_0101:  ldloca.s   V_5
        IL_0103:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                    !!1&)
        IL_0108:  nop
        IL_0109:  leave      IL_0257

        IL_010e:  ldarg.0
        IL_010f:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__1'
        IL_0114:  stloc.2
        IL_0115:  ldarg.0
        IL_0116:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__1'
        IL_011b:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>
        IL_0121:  ldarg.0
        IL_0122:  ldc.i4.m1
        IL_0123:  dup
        IL_0124:  stloc.0
        IL_0125:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
        IL_012a:  ldloca.s   V_2
        IL_012c:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetResult()
        IL_0131:  pop
        IL_0132:  br         IL_0219

        IL_0137:  ldarg.0
        IL_0138:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>4__this'
        IL_013d:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0142:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.EventRecord>()
        IL_0147:  ldtoken    SkoolComm.Infrastructure.Models.EventRecord
        IL_014c:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0151:  ldstr      "e"
        IL_0156:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_015b:  stloc.3
        IL_015c:  ldloc.3
        IL_015d:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_EventId()
        IL_0162:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_0167:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_016c:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0171:  ldarg.0
        IL_0172:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
        IL_0177:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'
        IL_017c:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0181:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_0186:  ldtoken    field int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0'::id
        IL_018b:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0190:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_0195:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_019a:  ldc.i4.1
        IL_019b:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_01a0:  dup
        IL_01a1:  ldc.i4.0
        IL_01a2:  ldloc.3
        IL_01a3:  stelem.ref
        IL_01a4:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_01a9:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_01ae:  ldnull
        IL_01af:  ldloca.s   V_4
        IL_01b1:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_01b7:  ldloc.s    V_4
        IL_01b9:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Delete(class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                             valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_01be:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetAwaiter()
        IL_01c3:  stloc.s    V_6
        IL_01c5:  ldloca.s   V_6
        IL_01c7:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::get_IsCompleted()
        IL_01cc:  brtrue.s   IL_0211

        IL_01ce:  ldarg.0
        IL_01cf:  ldc.i4.1
        IL_01d0:  dup
        IL_01d1:  stloc.0
        IL_01d2:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
        IL_01d7:  ldarg.0
        IL_01d8:  ldloc.s    V_6
        IL_01da:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__2'
        IL_01df:  ldarg.0
        IL_01e0:  stloc.s    V_5
        IL_01e2:  ldarg.0
        IL_01e3:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
        IL_01e8:  ldloca.s   V_6
        IL_01ea:  ldloca.s   V_5
        IL_01ec:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                 !!1&)
        IL_01f1:  nop
        IL_01f2:  leave.s    IL_0257

        IL_01f4:  ldarg.0
        IL_01f5:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__2'
        IL_01fa:  stloc.s    V_6
        IL_01fc:  ldarg.0
        IL_01fd:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>u__2'
        IL_0202:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>
        IL_0208:  ldarg.0
        IL_0209:  ldc.i4.m1
        IL_020a:  dup
        IL_020b:  stloc.0
        IL_020c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
        IL_0211:  ldloca.s   V_6
        IL_0213:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetResult()
        IL_0218:  pop
        IL_0219:  leave.s    IL_023c

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_021b:  stloc.s    V_7
        IL_021d:  ldarg.0
        IL_021e:  ldc.i4.s   -2
        IL_0220:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
        IL_0225:  ldarg.0
        IL_0226:  ldnull
        IL_0227:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
        IL_022c:  ldarg.0
        IL_022d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
        IL_0232:  ldloc.s    V_7
        IL_0234:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0239:  nop
        IL_023a:  leave.s    IL_0257

      }  // end handler
      IL_023c:  ldarg.0
      IL_023d:  ldc.i4.s   -2
      IL_023f:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
      IL_0244:  ldarg.0
      IL_0245:  ldnull
      IL_0246:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>8__1'
      IL_024b:  ldarg.0
      IL_024c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
      IL_0251:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0256:  nop
      IL_0257:  ret
    } // end of method '<DeleteAsync>d__5'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<DeleteAsync>d__5'::SetStateMachine

  } // end of class '<DeleteAsync>d__5'

  .class auto ansi sealed nested private beforefieldinit '<GetAllAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseEventService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> '<events>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> '<plans>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> '<list>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> '<>s__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> '<>s__5'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> '<>u__2'
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
      // Code size       590 (0x24e)
      .maxstack  4
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2' V_4,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> V_5,
               class [System.Runtime]System.Exception V_6)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        IL_000a:  br.s       IL_000c

        IL_000c:  ldloc.0
        IL_000d:  ldc.i4.1
        IL_000e:  beq.s      IL_0014

        IL_0010:  br.s       IL_0019

        IL_0012:  br.s       IL_0070

        IL_0014:  br         IL_0104

        IL_0019:  nop
        IL_001a:  ldarg.0
        IL_001b:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>4__this'
        IL_0020:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0025:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.EventRecord>()
        IL_002a:  ldloca.s   V_3
        IL_002c:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0032:  ldloc.3
        IL_0033:  ldc.i4.2
        IL_0034:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                          valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_0039:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetAwaiter()
        IL_003e:  stloc.2
        IL_003f:  ldloca.s   V_2
        IL_0041:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::get_IsCompleted()
        IL_0046:  brtrue.s   IL_008c

        IL_0048:  ldarg.0
        IL_0049:  ldc.i4.0
        IL_004a:  dup
        IL_004b:  stloc.0
        IL_004c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0051:  ldarg.0
        IL_0052:  ldloc.2
        IL_0053:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0058:  ldarg.0
        IL_0059:  stloc.s    V_4
        IL_005b:  ldarg.0
        IL_005c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0061:  ldloca.s   V_2
        IL_0063:  ldloca.s   V_4
        IL_0065:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        !!1&)
        IL_006a:  nop
        IL_006b:  leave      IL_024d

        IL_0070:  ldarg.0
        IL_0071:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__1'
        IL_0076:  stloc.2
        IL_0077:  ldarg.0
        IL_0078:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__1'
        IL_007d:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>
        IL_0083:  ldarg.0
        IL_0084:  ldc.i4.m1
        IL_0085:  dup
        IL_0086:  stloc.0
        IL_0087:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
        IL_008c:  ldarg.0
        IL_008d:  ldloca.s   V_2
        IL_008f:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetResult()
        IL_0094:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__4'
        IL_0099:  ldarg.0
        IL_009a:  ldarg.0
        IL_009b:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__4'
        IL_00a0:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<events>5__1'
        IL_00a5:  ldarg.0
        IL_00a6:  ldnull
        IL_00a7:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__4'
        IL_00ac:  ldarg.0
        IL_00ad:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>4__this'
        IL_00b2:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_00b7:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.YearPlanRecord>()
        IL_00bc:  ldloca.s   V_3
        IL_00be:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00c4:  ldloc.3
        IL_00c5:  ldc.i4.2
        IL_00c6:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                             valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_00cb:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetAwaiter()
        IL_00d0:  stloc.s    V_5
        IL_00d2:  ldloca.s   V_5
        IL_00d4:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::get_IsCompleted()
        IL_00d9:  brtrue.s   IL_0121

        IL_00db:  ldarg.0
        IL_00dc:  ldc.i4.1
        IL_00dd:  dup
        IL_00de:  stloc.0
        IL_00df:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
        IL_00e4:  ldarg.0
        IL_00e5:  ldloc.s    V_5
        IL_00e7:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__2'
        IL_00ec:  ldarg.0
        IL_00ed:  stloc.s    V_4
        IL_00ef:  ldarg.0
        IL_00f0:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_00f5:  ldloca.s   V_5
        IL_00f7:  ldloca.s   V_4
        IL_00f9:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           !!1&)
        IL_00fe:  nop
        IL_00ff:  leave      IL_024d

        IL_0104:  ldarg.0
        IL_0105:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__2'
        IL_010a:  stloc.s    V_5
        IL_010c:  ldarg.0
        IL_010d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>u__2'
        IL_0112:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>
        IL_0118:  ldarg.0
        IL_0119:  ldc.i4.m1
        IL_011a:  dup
        IL_011b:  stloc.0
        IL_011c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
        IL_0121:  ldarg.0
        IL_0122:  ldloca.s   V_5
        IL_0124:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetResult()
        IL_0129:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__5'
        IL_012e:  ldarg.0
        IL_012f:  ldarg.0
        IL_0130:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__5'
        IL_0135:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<plans>5__2'
        IL_013a:  ldarg.0
        IL_013b:  ldnull
        IL_013c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>s__5'
        IL_0141:  ldarg.0
        IL_0142:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>::.ctor()
        IL_0147:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
        IL_014c:  ldarg.0
        IL_014d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
        IL_0152:  ldarg.0
        IL_0153:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<events>5__1'
        IL_0158:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>::get_Models()
        IL_015d:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_0'
        IL_0162:  dup
        IL_0163:  brtrue.s   IL_017c

        IL_0165:  pop
        IL_0166:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c' SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9'
        IL_016b:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.EventRecord)
        IL_0171:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>::.ctor(object,
                                                                                                                                                                                                      native int)
        IL_0176:  dup
        IL_0177:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_0'
        IL_017c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.EventRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0181:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
        IL_0186:  nop
        IL_0187:  ldarg.0
        IL_0188:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
        IL_018d:  ldarg.0
        IL_018e:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<plans>5__2'
        IL_0193:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::get_Models()
        IL_0198:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_1'
        IL_019d:  dup
        IL_019e:  brtrue.s   IL_01b7

        IL_01a0:  pop
        IL_01a1:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c' SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9'
        IL_01a6:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<GetAllAsync>b__2_1'(class SkoolComm.Infrastructure.Models.YearPlanRecord)
        IL_01ac:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>::.ctor(object,
                                                                                                                                                                                                         native int)
        IL_01b1:  dup
        IL_01b2:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_1'
        IL_01b7:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.YearPlanRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_01bc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
        IL_01c1:  nop
        IL_01c2:  ldarg.0
        IL_01c3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
        IL_01c8:  ldsfld     class [System.Runtime]System.Func`2<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_2'
        IL_01cd:  dup
        IL_01ce:  brtrue.s   IL_01e7

        IL_01d0:  pop
        IL_01d1:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c' SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9'
        IL_01d6:  ldftn      instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<GetAllAsync>b__2_2'(class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem)
        IL_01dc:  newobj     instance void class [System.Runtime]System.Func`2<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem,valuetype [System.Runtime]System.DateTime>::.ctor(object,
                                                                                                                                                                                              native int)
        IL_01e1:  dup
        IL_01e2:  stsfld     class [System.Runtime]System.Func`2<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem,valuetype [System.Runtime]System.DateTime> SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c'::'<>9__2_2'
        IL_01e7:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem,valuetype [System.Runtime]System.DateTime>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_01ec:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_01f1:  stloc.1
        IL_01f2:  leave.s    IL_0223

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_01f4:  stloc.s    V_6
        IL_01f6:  ldarg.0
        IL_01f7:  ldc.i4.s   -2
        IL_01f9:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
        IL_01fe:  ldarg.0
        IL_01ff:  ldnull
        IL_0200:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<events>5__1'
        IL_0205:  ldarg.0
        IL_0206:  ldnull
        IL_0207:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<plans>5__2'
        IL_020c:  ldarg.0
        IL_020d:  ldnull
        IL_020e:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
        IL_0213:  ldarg.0
        IL_0214:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0219:  ldloc.s    V_6
        IL_021b:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::SetException(class [System.Runtime]System.Exception)
        IL_0220:  nop
        IL_0221:  leave.s    IL_024d

      }  // end handler
      IL_0223:  ldarg.0
      IL_0224:  ldc.i4.s   -2
      IL_0226:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
      IL_022b:  ldarg.0
      IL_022c:  ldnull
      IL_022d:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<events>5__1'
      IL_0232:  ldarg.0
      IL_0233:  ldnull
      IL_0234:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<plans>5__2'
      IL_0239:  ldarg.0
      IL_023a:  ldnull
      IL_023b:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<list>5__3'
      IL_0240:  ldarg.0
      IL_0241:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
      IL_0246:  ldloc.1
      IL_0247:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::SetResult(!0)
      IL_024c:  nop
      IL_024d:  ret
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

  .class auto ansi sealed nested private beforefieldinit '<UpdateAsync>d__4'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem item
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseEventService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> '<response>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.YearPlanRecord '<record>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> '<>s__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> '<response>5__5'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.EventRecord '<record>5__6'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> '<>s__7'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> '<>u__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 01 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> '<>u__2'
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
    } // end of method '<UpdateAsync>d__4'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       1333 (0x535)
      .maxstack  6
      .locals init (int32 V_0,
               bool V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> V_2,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_3,
               valuetype [System.Runtime]System.Threading.CancellationToken V_4,
               class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4' V_5,
               valuetype [System.Runtime]System.DateTime V_6,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> V_7,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> V_8,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> V_9,
               class [System.Runtime]System.Exception V_10)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  switch     ( 
                              IL_001f,
                              IL_0024,
                              IL_0029,
                              IL_002e)
        IL_001d:  br.s       IL_0033

        IL_001f:  br         IL_0144

        IL_0024:  br         IL_0286

        IL_0029:  br         IL_0394

        IL_002e:  br         IL_04c2

        IL_0033:  ldarg.0
        IL_0034:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::.ctor()
        IL_0039:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_003e:  ldarg.0
        IL_003f:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0044:  ldarg.0
        IL_0045:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::item
        IL_004a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_004f:  nop
        IL_0050:  ldarg.0
        IL_0051:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0056:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_005b:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Kind()
        IL_0060:  ldstr      "yearplan"
        IL_0065:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                             string)
        IL_006a:  stloc.1
        IL_006b:  ldloc.1
        IL_006c:  brfalse    IL_02bf

        IL_0071:  nop
        IL_0072:  ldarg.0
        IL_0073:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>4__this'
        IL_0078:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_007d:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.YearPlanRecord>()
        IL_0082:  ldtoken    SkoolComm.Infrastructure.Models.YearPlanRecord
        IL_0087:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_008c:  ldstr      "p"
        IL_0091:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0096:  stloc.3
        IL_0097:  ldloc.3
        IL_0098:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_YearPlanId()
        IL_009d:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_00a2:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_00a7:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_00ac:  ldarg.0
        IL_00ad:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_00b2:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'
        IL_00b7:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_00bc:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_00c1:  ldtoken    field class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_00c6:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_00cb:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_00d0:  ldtoken    method instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Id()
        IL_00d5:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_00da:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_00df:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_00e4:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_00e9:  ldc.i4.1
        IL_00ea:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_00ef:  dup
        IL_00f0:  ldc.i4.0
        IL_00f1:  ldloc.3
        IL_00f2:  stelem.ref
        IL_00f3:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.YearPlanRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                          class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00f8:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00fd:  ldloca.s   V_4
        IL_00ff:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0105:  ldloc.s    V_4
        IL_0107:  ldc.i4.2
        IL_0108:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                             valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_010d:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetAwaiter()
        IL_0112:  stloc.2
        IL_0113:  ldloca.s   V_2
        IL_0115:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::get_IsCompleted()
        IL_011a:  brtrue.s   IL_0160

        IL_011c:  ldarg.0
        IL_011d:  ldc.i4.0
        IL_011e:  dup
        IL_011f:  stloc.0
        IL_0120:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_0125:  ldarg.0
        IL_0126:  ldloc.2
        IL_0127:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_012c:  ldarg.0
        IL_012d:  stloc.s    V_5
        IL_012f:  ldarg.0
        IL_0130:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
        IL_0135:  ldloca.s   V_2
        IL_0137:  ldloca.s   V_5
        IL_0139:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                    !!1&)
        IL_013e:  nop
        IL_013f:  leave      IL_0534

        IL_0144:  ldarg.0
        IL_0145:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_014a:  stloc.2
        IL_014b:  ldarg.0
        IL_014c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_0151:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>
        IL_0157:  ldarg.0
        IL_0158:  ldc.i4.m1
        IL_0159:  dup
        IL_015a:  stloc.0
        IL_015b:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_0160:  ldarg.0
        IL_0161:  ldloca.s   V_2
        IL_0163:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetResult()
        IL_0168:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__4'
        IL_016d:  ldarg.0
        IL_016e:  ldarg.0
        IL_016f:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__4'
        IL_0174:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__2'
        IL_0179:  ldarg.0
        IL_017a:  ldnull
        IL_017b:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__4'
        IL_0180:  ldarg.0
        IL_0181:  ldarg.0
        IL_0182:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__2'
        IL_0187:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::get_Models()
        IL_018c:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Infrastructure.Models.YearPlanRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0191:  dup
        IL_0192:  brtrue.s   IL_01a0

        IL_0194:  pop
        IL_0195:  ldstr      "That year plan item no longer exists."
        IL_019a:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
        IL_019f:  throw

        IL_01a0:  stfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_01a5:  ldarg.0
        IL_01a6:  ldfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_01ab:  ldarg.0
        IL_01ac:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_01b1:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_01b6:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Title()
        IL_01bb:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Title(string)
        IL_01c0:  nop
        IL_01c1:  ldarg.0
        IL_01c2:  ldfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_01c7:  ldarg.0
        IL_01c8:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_01cd:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_01d2:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Description()
        IL_01d7:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Description(string)
        IL_01dc:  nop
        IL_01dd:  ldarg.0
        IL_01de:  ldfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_01e3:  ldarg.0
        IL_01e4:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_01e9:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_01ee:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StartDate()
        IL_01f3:  stloc.s    V_6
        IL_01f5:  ldloca.s   V_6
        IL_01f7:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Date()
        IL_01fc:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_StartDate(valuetype [System.Runtime]System.DateTime)
        IL_0201:  nop
        IL_0202:  ldarg.0
        IL_0203:  ldfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_0208:  ldarg.0
        IL_0209:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_020e:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_0213:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_EndDate()
        IL_0218:  stloc.s    V_6
        IL_021a:  ldloca.s   V_6
        IL_021c:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Date()
        IL_0221:  callvirt   instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_EndDate(valuetype [System.Runtime]System.DateTime)
        IL_0226:  nop
        IL_0227:  ldarg.0
        IL_0228:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>4__this'
        IL_022d:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0232:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.YearPlanRecord>()
        IL_0237:  ldarg.0
        IL_0238:  ldfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_023d:  ldnull
        IL_023e:  ldloca.s   V_4
        IL_0240:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0246:  ldloc.s    V_4
        IL_0248:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>::Update(!0,
                                                                                                                                                                                                                                                                                                                class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                                valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_024d:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetAwaiter()
        IL_0252:  stloc.s    V_7
        IL_0254:  ldloca.s   V_7
        IL_0256:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::get_IsCompleted()
        IL_025b:  brtrue.s   IL_02a3

        IL_025d:  ldarg.0
        IL_025e:  ldc.i4.1
        IL_025f:  dup
        IL_0260:  stloc.0
        IL_0261:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_0266:  ldarg.0
        IL_0267:  ldloc.s    V_7
        IL_0269:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_026e:  ldarg.0
        IL_026f:  stloc.s    V_5
        IL_0271:  ldarg.0
        IL_0272:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
        IL_0277:  ldloca.s   V_7
        IL_0279:  ldloca.s   V_5
        IL_027b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                    !!1&)
        IL_0280:  nop
        IL_0281:  leave      IL_0534

        IL_0286:  ldarg.0
        IL_0287:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_028c:  stloc.s    V_7
        IL_028e:  ldarg.0
        IL_028f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__1'
        IL_0294:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>
        IL_029a:  ldarg.0
        IL_029b:  ldc.i4.m1
        IL_029c:  dup
        IL_029d:  stloc.0
        IL_029e:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_02a3:  ldloca.s   V_7
        IL_02a5:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord>>::GetResult()
        IL_02aa:  pop
        IL_02ab:  nop
        IL_02ac:  ldarg.0
        IL_02ad:  ldnull
        IL_02ae:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.YearPlanRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__2'
        IL_02b3:  ldarg.0
        IL_02b4:  ldnull
        IL_02b5:  stfld      class SkoolComm.Infrastructure.Models.YearPlanRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__3'
        IL_02ba:  br         IL_04f6

        IL_02bf:  nop
        IL_02c0:  ldarg.0
        IL_02c1:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>4__this'
        IL_02c6:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_02cb:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.EventRecord>()
        IL_02d0:  ldtoken    SkoolComm.Infrastructure.Models.EventRecord
        IL_02d5:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_02da:  ldstr      "e"
        IL_02df:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_02e4:  stloc.3
        IL_02e5:  ldloc.3
        IL_02e6:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_EventId()
        IL_02eb:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_02f0:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_02f5:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_02fa:  ldarg.0
        IL_02fb:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0300:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'
        IL_0305:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_030a:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_030f:  ldtoken    field class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_0314:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0319:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_031e:  ldtoken    method instance int32 [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Id()
        IL_0323:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_0328:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_032d:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0332:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_0337:  ldc.i4.1
        IL_0338:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_033d:  dup
        IL_033e:  ldc.i4.0
        IL_033f:  ldloc.3
        IL_0340:  stelem.ref
        IL_0341:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.EventRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_0346:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_034b:  ldloca.s   V_4
        IL_034d:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0353:  ldloc.s    V_4
        IL_0355:  ldc.i4.2
        IL_0356:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                          valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_035b:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetAwaiter()
        IL_0360:  stloc.s    V_8
        IL_0362:  ldloca.s   V_8
        IL_0364:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::get_IsCompleted()
        IL_0369:  brtrue.s   IL_03b1

        IL_036b:  ldarg.0
        IL_036c:  ldc.i4.2
        IL_036d:  dup
        IL_036e:  stloc.0
        IL_036f:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_0374:  ldarg.0
        IL_0375:  ldloc.s    V_8
        IL_0377:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_037c:  ldarg.0
        IL_037d:  stloc.s    V_5
        IL_037f:  ldarg.0
        IL_0380:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
        IL_0385:  ldloca.s   V_8
        IL_0387:  ldloca.s   V_5
        IL_0389:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                 !!1&)
        IL_038e:  nop
        IL_038f:  leave      IL_0534

        IL_0394:  ldarg.0
        IL_0395:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_039a:  stloc.s    V_8
        IL_039c:  ldarg.0
        IL_039d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_03a2:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>
        IL_03a8:  ldarg.0
        IL_03a9:  ldc.i4.m1
        IL_03aa:  dup
        IL_03ab:  stloc.0
        IL_03ac:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_03b1:  ldarg.0
        IL_03b2:  ldloca.s   V_8
        IL_03b4:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetResult()
        IL_03b9:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__7'
        IL_03be:  ldarg.0
        IL_03bf:  ldarg.0
        IL_03c0:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__7'
        IL_03c5:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__5'
        IL_03ca:  ldarg.0
        IL_03cb:  ldnull
        IL_03cc:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>s__7'
        IL_03d1:  ldarg.0
        IL_03d2:  ldarg.0
        IL_03d3:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__5'
        IL_03d8:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>::get_Models()
        IL_03dd:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Infrastructure.Models.EventRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_03e2:  dup
        IL_03e3:  brtrue.s   IL_03f1

        IL_03e5:  pop
        IL_03e6:  ldstr      "That event no longer exists."
        IL_03eb:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
        IL_03f0:  throw

        IL_03f1:  stfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_03f6:  ldarg.0
        IL_03f7:  ldfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_03fc:  ldarg.0
        IL_03fd:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0402:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_0407:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Title()
        IL_040c:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Title(string)
        IL_0411:  nop
        IL_0412:  ldarg.0
        IL_0413:  ldfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_0418:  ldarg.0
        IL_0419:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_041e:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_0423:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Description()
        IL_0428:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Description(string)
        IL_042d:  nop
        IL_042e:  ldarg.0
        IL_042f:  ldfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_0434:  ldarg.0
        IL_0435:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_043a:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_043f:  callvirt   instance valuetype [System.Runtime]System.DateTime [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_StartDate()
        IL_0444:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_EventDate(valuetype [System.Runtime]System.DateTime)
        IL_0449:  nop
        IL_044a:  ldarg.0
        IL_044b:  ldfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_0450:  ldarg.0
        IL_0451:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0456:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0'::item
        IL_045b:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem::get_Location()
        IL_0460:  callvirt   instance void SkoolComm.Infrastructure.Models.EventRecord::set_Location(string)
        IL_0465:  nop
        IL_0466:  ldarg.0
        IL_0467:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>4__this'
        IL_046c:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
        IL_0471:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.EventRecord>()
        IL_0476:  ldarg.0
        IL_0477:  ldfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_047c:  ldnull
        IL_047d:  ldloca.s   V_4
        IL_047f:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0485:  ldloc.s    V_4
        IL_0487:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.EventRecord>::Update(!0,
                                                                                                                                                                                                                                                                                                             class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                             valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_048c:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetAwaiter()
        IL_0491:  stloc.s    V_9
        IL_0493:  ldloca.s   V_9
        IL_0495:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::get_IsCompleted()
        IL_049a:  brtrue.s   IL_04df

        IL_049c:  ldarg.0
        IL_049d:  ldc.i4.3
        IL_049e:  dup
        IL_049f:  stloc.0
        IL_04a0:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_04a5:  ldarg.0
        IL_04a6:  ldloc.s    V_9
        IL_04a8:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_04ad:  ldarg.0
        IL_04ae:  stloc.s    V_5
        IL_04b0:  ldarg.0
        IL_04b1:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
        IL_04b6:  ldloca.s   V_9
        IL_04b8:  ldloca.s   V_5
        IL_04ba:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>,class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                 !!1&)
        IL_04bf:  nop
        IL_04c0:  leave.s    IL_0534

        IL_04c2:  ldarg.0
        IL_04c3:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_04c8:  stloc.s    V_9
        IL_04ca:  ldarg.0
        IL_04cb:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>u__2'
        IL_04d0:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>
        IL_04d6:  ldarg.0
        IL_04d7:  ldc.i4.m1
        IL_04d8:  dup
        IL_04d9:  stloc.0
        IL_04da:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_04df:  ldloca.s   V_9
        IL_04e1:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord>>::GetResult()
        IL_04e6:  pop
        IL_04e7:  nop
        IL_04e8:  ldarg.0
        IL_04e9:  ldnull
        IL_04ea:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.EventRecord> SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<response>5__5'
        IL_04ef:  ldarg.0
        IL_04f0:  ldnull
        IL_04f1:  stfld      class SkoolComm.Infrastructure.Models.EventRecord SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<record>5__6'
        IL_04f6:  leave.s    IL_0519

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_04f8:  stloc.s    V_10
        IL_04fa:  ldarg.0
        IL_04fb:  ldc.i4.s   -2
        IL_04fd:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
        IL_0502:  ldarg.0
        IL_0503:  ldnull
        IL_0504:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
        IL_0509:  ldarg.0
        IL_050a:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
        IL_050f:  ldloc.s    V_10
        IL_0511:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0516:  nop
        IL_0517:  leave.s    IL_0534

      }  // end handler
      IL_0519:  ldarg.0
      IL_051a:  ldc.i4.s   -2
      IL_051c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
      IL_0521:  ldarg.0
      IL_0522:  ldnull
      IL_0523:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService/'<>c__DisplayClass4_0' SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>8__1'
      IL_0528:  ldarg.0
      IL_0529:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
      IL_052e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0533:  nop
      IL_0534:  ret
    } // end of method '<UpdateAsync>d__4'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<UpdateAsync>d__4'::SetStateMachine

  } // end of class '<UpdateAsync>d__4'

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseEventService::_supabase
    IL_000f:  ret
  } // end of method SupabaseEventService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 45 76 65   // ices.SupabaseEve
                                                                                                                                                   6E 74 53 65 72 76 69 63 65 2B 3C 47 65 74 41 6C   // ntService+<GetAl
                                                                                                                                                   6C 41 73 79 6E 63 3E 64 5F 5F 32 00 00 )          // lAsync>d__2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::Start<class SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>> SkoolComm.Infrastructure.Services.SupabaseEventService/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem>>::get_Task()
    IL_0037:  ret
  } // end of method SupabaseEventService::GetAllAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 45 76 65   // ices.SupabaseEve
                                                                                                                                                   6E 74 53 65 72 76 69 63 65 2B 3C 43 72 65 61 74   // ntService+<Creat
                                                                                                                                                   65 41 73 79 6E 63 3E 64 5F 5F 33 00 00 )          // eAsync>d__3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::item
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<CreateAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method SupabaseEventService::CreateAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 45 76 65   // ices.SupabaseEve
                                                                                                                                                   6E 74 53 65 72 76 69 63 65 2B 3C 55 70 64 61 74   // ntService+<Updat
                                                                                                                                                   65 41 73 79 6E 63 3E 64 5F 5F 34 00 00 )          // eAsync>d__4..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Models.CalendarItem SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::item
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<UpdateAsync>d__4'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method SupabaseEventService::UpdateAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(string kind,
                      int32 id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 45 76 65   // ices.SupabaseEve
                                                                                                                                                   6E 74 53 65 72 76 69 63 65 2B 3C 44 65 6C 65 74   // ntService+<Delet
                                                                                                                                                   65 41 73 79 6E 63 3E 64 5F 5F 35 00 00 )          // eAsync>d__5..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       70 (0x46)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseEventService SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      string SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::kind
    IL_001f:  ldloc.0
    IL_0020:  ldarg.2
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::id
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.m1
    IL_0028:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>1__state'
    IL_002d:  ldloc.0
    IL_002e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'>(!!0&)
    IL_003a:  ldloc.0
    IL_003b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Services.SupabaseEventService/'<DeleteAsync>d__5'::'<>t__builder'
    IL_0040:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_0045:  ret
  } // end of method SupabaseEventService::DeleteAsync

} // end of class SkoolComm.Infrastructure.Services.SupabaseEventService

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Services.SupabaseStaffService
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStaffService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStaffService
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class abstract auto ansi sealed nested private beforefieldinit '<>O'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> '<0>__Map'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  } // end of class '<>O'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> '<>9__3_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> '<>9__3_1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance string 
            '<GetAllAsync>b__3_0'(class SkoolComm.Infrastructure.Models.StaffRecord s) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_LastName()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAllAsync>b__3_0'

    .method assembly hidebysig instance string 
            '<GetAllAsync>b__3_1'(class SkoolComm.Infrastructure.Models.StaffRecord s) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_FirstName()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAllAsync>b__3_1'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 staffId
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<GetAllAsync>d__3'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 00 00 01 00 00 ) 
    .field public class SkoolComm.Infrastructure.Services.SupabaseStaffService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<response>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<>s__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> '<>u__1'
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
    } // end of method '<GetAllAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       346 (0x15a)
      .maxstack  3
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0065

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>4__this'
        IL_0015:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseStaffService::_supabase
        IL_001a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StaffRecord>()
        IL_001f:  ldloca.s   V_3
        IL_0021:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0027:  ldloc.3
        IL_0028:  ldc.i4.2
        IL_0029:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                          valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_002e:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetAwaiter()
        IL_0033:  stloc.2
        IL_0034:  ldloca.s   V_2
        IL_0036:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::get_IsCompleted()
        IL_003b:  brtrue.s   IL_0081

        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.0
        IL_003f:  dup
        IL_0040:  stloc.0
        IL_0041:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
        IL_0046:  ldarg.0
        IL_0047:  ldloc.2
        IL_0048:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>u__1'
        IL_004d:  ldarg.0
        IL_004e:  stloc.s    V_4
        IL_0050:  ldarg.0
        IL_0051:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
        IL_0056:  ldloca.s   V_2
        IL_0058:  ldloca.s   V_4
        IL_005a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>,class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        !!1&)
        IL_005f:  nop
        IL_0060:  leave      IL_0159

        IL_0065:  ldarg.0
        IL_0066:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>u__1'
        IL_006b:  stloc.2
        IL_006c:  ldarg.0
        IL_006d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>u__1'
        IL_0072:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>
        IL_0078:  ldarg.0
        IL_0079:  ldc.i4.m1
        IL_007a:  dup
        IL_007b:  stloc.0
        IL_007c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
        IL_0081:  ldarg.0
        IL_0082:  ldloca.s   V_2
        IL_0084:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetResult()
        IL_0089:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>s__2'
        IL_008e:  ldarg.0
        IL_008f:  ldarg.0
        IL_0090:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>s__2'
        IL_0095:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<response>5__1'
        IL_009a:  ldarg.0
        IL_009b:  ldnull
        IL_009c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>s__2'
        IL_00a1:  ldarg.0
        IL_00a2:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<response>5__1'
        IL_00a7:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>::get_Models()
        IL_00ac:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9__3_0'
        IL_00b1:  dup
        IL_00b2:  brtrue.s   IL_00cb

        IL_00b4:  pop
        IL_00b5:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9'
        IL_00ba:  ldftn      instance string SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<GetAllAsync>b__3_0'(class SkoolComm.Infrastructure.Models.StaffRecord)
        IL_00c0:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string>::.ctor(object,
                                                                                                                                                native int)
        IL_00c5:  dup
        IL_00c6:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9__3_0'
        IL_00cb:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class SkoolComm.Infrastructure.Models.StaffRecord,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00d0:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9__3_1'
        IL_00d5:  dup
        IL_00d6:  brtrue.s   IL_00ef

        IL_00d8:  pop
        IL_00d9:  ldsfld     class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9'
        IL_00de:  ldftn      instance string SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<GetAllAsync>b__3_1'(class SkoolComm.Infrastructure.Models.StaffRecord)
        IL_00e4:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string>::.ctor(object,
                                                                                                                                                native int)
        IL_00e9:  dup
        IL_00ea:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,string> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c'::'<>9__3_1'
        IL_00ef:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::ThenBy<class SkoolComm.Infrastructure.Models.StaffRecord,string>(class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0>,
                                                                                                                                                                                            class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00f4:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>O'::'<0>__Map'
        IL_00f9:  dup
        IL_00fa:  brtrue.s   IL_010f

        IL_00fc:  pop
        IL_00fd:  ldnull
        IL_00fe:  ldftn      class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile SkoolComm.Infrastructure.Services.SupabaseStaffService::Map(class SkoolComm.Infrastructure.Models.StaffRecord)
        IL_0104:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::.ctor(object,
                                                                                                                                                                                                      native int)
        IL_0109:  dup
        IL_010a:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>O'::'<0>__Map'
        IL_010f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.StaffRecord,class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0114:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0119:  stloc.1
        IL_011a:  leave.s    IL_013d

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_011c:  stloc.s    V_5
        IL_011e:  ldarg.0
        IL_011f:  ldc.i4.s   -2
        IL_0121:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
        IL_0126:  ldarg.0
        IL_0127:  ldnull
        IL_0128:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<response>5__1'
        IL_012d:  ldarg.0
        IL_012e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
        IL_0133:  ldloc.s    V_5
        IL_0135:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::SetException(class [System.Runtime]System.Exception)
        IL_013a:  nop
        IL_013b:  leave.s    IL_0159

      }  // end handler
      IL_013d:  ldarg.0
      IL_013e:  ldc.i4.s   -2
      IL_0140:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
      IL_0145:  ldarg.0
      IL_0146:  ldnull
      IL_0147:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<response>5__1'
      IL_014c:  ldarg.0
      IL_014d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
      IL_0152:  ldloc.1
      IL_0153:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::SetResult(!0)
      IL_0158:  nop
      IL_0159:  ret
    } // end of method '<GetAllAsync>d__3'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetAllAsync>d__3'::SetStateMachine

  } // end of class '<GetAllAsync>d__3'

  .class auto ansi sealed nested private beforefieldinit '<GetByIdAsync>d__2'
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .interfaceimpl type [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> '<>t__builder'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public int32 staffId
    .field public class SkoolComm.Infrastructure.Services.SupabaseStaffService '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<response>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.StaffRecord '<record>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> '<>s__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> '<>u__1'
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
    } // end of method '<GetByIdAsync>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       433 (0x1b1)
      .maxstack  6
      .locals init (int32 V_0,
               class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> V_2,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_3,
               valuetype [System.Runtime]System.Threading.CancellationToken V_4,
               class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2' V_5,
               class [System.Runtime]System.Exception V_6)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_00ec

        IL_0011:  ldarg.0
        IL_0012:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0'::.ctor()
        IL_0017:  stfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>8__1'
        IL_001c:  ldarg.0
        IL_001d:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>8__1'
        IL_0022:  ldarg.0
        IL_0023:  ldfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::staffId
        IL_0028:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0'::staffId
        IL_002d:  nop
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>4__this'
        IL_0034:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseStaffService::_supabase
        IL_0039:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StaffRecord>()
        IL_003e:  ldtoken    SkoolComm.Infrastructure.Models.StaffRecord
        IL_0043:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0048:  ldstr      "s"
        IL_004d:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0052:  stloc.3
        IL_0053:  ldloc.3
        IL_0054:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.StaffRecord::get_StaffId()
        IL_0059:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_005e:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_0063:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0068:  ldarg.0
        IL_0069:  ldfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>8__1'
        IL_006e:  ldtoken    SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0'
        IL_0073:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0078:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_007d:  ldtoken    field int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0'::staffId
        IL_0082:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0087:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_008c:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_0091:  ldc.i4.1
        IL_0092:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_0097:  dup
        IL_0098:  ldc.i4.0
        IL_0099:  ldloc.3
        IL_009a:  stelem.ref
        IL_009b:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StaffRecord,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00a0:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00a5:  ldloca.s   V_4
        IL_00a7:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00ad:  ldloc.s    V_4
        IL_00af:  ldc.i4.2
        IL_00b0:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StaffRecord>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                          valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_00b5:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetAwaiter()
        IL_00ba:  stloc.2
        IL_00bb:  ldloca.s   V_2
        IL_00bd:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::get_IsCompleted()
        IL_00c2:  brtrue.s   IL_0108

        IL_00c4:  ldarg.0
        IL_00c5:  ldc.i4.0
        IL_00c6:  dup
        IL_00c7:  stloc.0
        IL_00c8:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
        IL_00cd:  ldarg.0
        IL_00ce:  ldloc.2
        IL_00cf:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>u__1'
        IL_00d4:  ldarg.0
        IL_00d5:  stloc.s    V_5
        IL_00d7:  ldarg.0
        IL_00d8:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
        IL_00dd:  ldloca.s   V_2
        IL_00df:  ldloca.s   V_5
        IL_00e1:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>,class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            !!1&)
        IL_00e6:  nop
        IL_00e7:  leave      IL_01b0

        IL_00ec:  ldarg.0
        IL_00ed:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>u__1'
        IL_00f2:  stloc.2
        IL_00f3:  ldarg.0
        IL_00f4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>u__1'
        IL_00f9:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>
        IL_00ff:  ldarg.0
        IL_0100:  ldc.i4.m1
        IL_0101:  dup
        IL_0102:  stloc.0
        IL_0103:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
        IL_0108:  ldarg.0
        IL_0109:  ldloca.s   V_2
        IL_010b:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>>::GetResult()
        IL_0110:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>s__4'
        IL_0115:  ldarg.0
        IL_0116:  ldarg.0
        IL_0117:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>s__4'
        IL_011c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<response>5__2'
        IL_0121:  ldarg.0
        IL_0122:  ldnull
        IL_0123:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>s__4'
        IL_0128:  ldarg.0
        IL_0129:  ldarg.0
        IL_012a:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<response>5__2'
        IL_012f:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord>::get_Models()
        IL_0134:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Infrastructure.Models.StaffRecord>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0139:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<record>5__3'
        IL_013e:  ldarg.0
        IL_013f:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<record>5__3'
        IL_0144:  brfalse.s  IL_0153

        IL_0146:  ldarg.0
        IL_0147:  ldfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<record>5__3'
        IL_014c:  call       class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile SkoolComm.Infrastructure.Services.SupabaseStaffService::Map(class SkoolComm.Infrastructure.Models.StaffRecord)
        IL_0151:  br.s       IL_0154

        IL_0153:  ldnull
        IL_0154:  stloc.1
        IL_0155:  leave.s    IL_0186

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0157:  stloc.s    V_6
        IL_0159:  ldarg.0
        IL_015a:  ldc.i4.s   -2
        IL_015c:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
        IL_0161:  ldarg.0
        IL_0162:  ldnull
        IL_0163:  stfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>8__1'
        IL_0168:  ldarg.0
        IL_0169:  ldnull
        IL_016a:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<response>5__2'
        IL_016f:  ldarg.0
        IL_0170:  ldnull
        IL_0171:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<record>5__3'
        IL_0176:  ldarg.0
        IL_0177:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
        IL_017c:  ldloc.s    V_6
        IL_017e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::SetException(class [System.Runtime]System.Exception)
        IL_0183:  nop
        IL_0184:  leave.s    IL_01b0

      }  // end handler
      IL_0186:  ldarg.0
      IL_0187:  ldc.i4.s   -2
      IL_0189:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
      IL_018e:  ldarg.0
      IL_018f:  ldnull
      IL_0190:  stfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<>c__DisplayClass2_0' SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>8__1'
      IL_0195:  ldarg.0
      IL_0196:  ldnull
      IL_0197:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StaffRecord> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<response>5__2'
      IL_019c:  ldarg.0
      IL_019d:  ldnull
      IL_019e:  stfld      class SkoolComm.Infrastructure.Models.StaffRecord SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<record>5__3'
      IL_01a3:  ldarg.0
      IL_01a4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
      IL_01a9:  ldloc.1
      IL_01aa:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::SetResult(!0)
      IL_01af:  nop
      IL_01b0:  ret
    } // end of method '<GetByIdAsync>d__2'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetByIdAsync>d__2'::SetStateMachine

  } // end of class '<GetByIdAsync>d__2'

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Services.SupabaseStaffService::_supabase
    IL_000f:  ret
  } // end of method SupabaseStaffService::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> 
          GetByIdAsync(int32 staffId) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 49 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..ISkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 53 74 61   // ices.SupabaseSta
                                                                                                                                                   66 66 53 65 72 76 69 63 65 2B 3C 47 65 74 42 79   // ffService+<GetBy
                                                                                                                                                   49 64 41 73 79 6E 63 3E 64 5F 5F 32 00 00 )       // IdAsync>d__2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::staffId
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::Start<class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetByIdAsync>d__2'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>::get_Task()
    IL_003e:  ret
  } // end of method SupabaseStaffService::GetByIdAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 53 65 72 76   // rastructure.Serv
                                                                                                                                                   69 63 65 73 2E 53 75 70 61 62 61 73 65 53 74 61   // ices.SupabaseSta
                                                                                                                                                   66 66 53 65 72 76 69 63 65 2B 3C 47 65 74 41 6C   // ffService+<GetAl
                                                                                                                                                   6C 41 73 79 6E 63 3E 64 5F 5F 33 00 00 )          // lAsync>d__3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Services.SupabaseStaffService SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::Start<class SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>> SkoolComm.Infrastructure.Services.SupabaseStaffService/'<GetAllAsync>d__3'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile>>::get_Task()
    IL_0037:  ret
  } // end of method SupabaseStaffService::GetAllAsync

  .method private hidebysig static class [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile 
          Map(class SkoolComm.Infrastructure.Models.StaffRecord s) cil managed
  {
    // Code size       84 (0x54)
    .maxstack  3
    IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.StaffRecord::get_StaffId()
    IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_StaffId(int32)
    IL_0011:  nop
    IL_0012:  dup
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_FirstName()
    IL_0019:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_FirstName(string)
    IL_001e:  nop
    IL_001f:  dup
    IL_0020:  ldarg.0
    IL_0021:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_LastName()
    IL_0026:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_LastName(string)
    IL_002b:  nop
    IL_002c:  dup
    IL_002d:  ldarg.0
    IL_002e:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Email()
    IL_0033:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_Email(string)
    IL_0038:  nop
    IL_0039:  dup
    IL_003a:  ldarg.0
    IL_003b:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Role()
    IL_0040:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_Role(string)
    IL_0045:  nop
    IL_0046:  dup
    IL_0047:  ldarg.0
    IL_0048:  callvirt   instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Status()
    IL_004d:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Models.StaffProfile::set_Status(string)
    IL_0052:  nop
    IL_0053:  ret
  } // end of method SupabaseStaffService::Map

} // end of class SkoolComm.Infrastructure.Services.SupabaseStaffService

.class private auto ansi beforefieldinit SkoolComm.Infrastructure.Repositores.ParentRepository
       extends [System.Runtime]System.Object
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method ParentRepository::.ctor

} // end of class SkoolComm.Infrastructure.Repositores.ParentRepository

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Repositores.StudentRepository
       extends [System.Runtime]System.Object
       implements [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .interfaceimpl type [SkoolComm.Domain]SkoolComm.Domain.Interfaces.IStudentRepository
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c' '<>9'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field public static class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> '<>9__2_0'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::.ctor()
      IL_0005:  stsfld     class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c' SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student 
            '<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.StudentModel x) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       61 (0x3d)
      .maxstack  8
      IL_0000:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
      IL_000c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Id(int32)
      IL_0011:  nop
      IL_0012:  dup
      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_FirstName()
      IL_0019:  ldstr      " "
      IL_001e:  ldarg.1
      IL_001f:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_LastName()
      IL_0024:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0029:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Name(string)
      IL_002e:  nop
      IL_002f:  dup
      IL_0030:  ldarg.1
      IL_0031:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_Grade()
      IL_0036:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Grade(string)
      IL_003b:  nop
      IL_003c:  ret
    } // end of method '<>c'::'<GetAllAsync>b__2_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass6_0'::.ctor

  } // end of class '<>c__DisplayClass6_0'

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
    .field public class SkoolComm.Infrastructure.Repositores.StudentRepository '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.StudentModel '<model>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> '<>u__1'
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
    } // end of method '<AddAsync>d__4'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       282 (0x11a)
      .maxstack  4
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> V_1,
               valuetype [System.Runtime]System.Threading.CancellationToken V_2,
               class SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4' V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_00b7

        IL_0011:  nop
        IL_0012:  ldarg.0
        IL_0013:  newobj     instance void SkoolComm.Infrastructure.Models.StudentModel::.ctor()
        IL_0018:  dup
        IL_0019:  ldarg.0
        IL_001a:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::student
        IL_001f:  callvirt   instance int32 [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::get_Id()
        IL_0024:  callvirt   instance void SkoolComm.Infrastructure.Models.StudentModel::set_LearnerId(int32)
        IL_0029:  nop
        IL_002a:  dup
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::student
        IL_0031:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::get_Name()
        IL_0036:  callvirt   instance void SkoolComm.Infrastructure.Models.StudentModel::set_FirstName(string)
        IL_003b:  nop
        IL_003c:  dup
        IL_003d:  ldsfld     string [System.Runtime]System.String::Empty
        IL_0042:  callvirt   instance void SkoolComm.Infrastructure.Models.StudentModel::set_LastName(string)
        IL_0047:  nop
        IL_0048:  dup
        IL_0049:  ldarg.0
        IL_004a:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::student
        IL_004f:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::get_Grade()
        IL_0054:  callvirt   instance void SkoolComm.Infrastructure.Models.StudentModel::set_Grade(string)
        IL_0059:  nop
        IL_005a:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<model>5__1'
        IL_005f:  ldarg.0
        IL_0060:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>4__this'
        IL_0065:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
        IL_006a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StudentModel>()
        IL_006f:  ldarg.0
        IL_0070:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<model>5__1'
        IL_0075:  ldnull
        IL_0076:  ldloca.s   V_2
        IL_0078:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_007e:  ldloc.2
        IL_007f:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Insert(!0,
                                                                                                                                                                                                                                                                                                              class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                              valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_0084:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetAwaiter()
        IL_0089:  stloc.1
        IL_008a:  ldloca.s   V_1
        IL_008c:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::get_IsCompleted()
        IL_0091:  brtrue.s   IL_00d3

        IL_0093:  ldarg.0
        IL_0094:  ldc.i4.0
        IL_0095:  dup
        IL_0096:  stloc.0
        IL_0097:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
        IL_009c:  ldarg.0
        IL_009d:  ldloc.1
        IL_009e:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>u__1'
        IL_00a3:  ldarg.0
        IL_00a4:  stloc.3
        IL_00a5:  ldarg.0
        IL_00a6:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
        IL_00ab:  ldloca.s   V_1
        IL_00ad:  ldloca.s   V_3
        IL_00af:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>,class SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                               !!1&)
        IL_00b4:  nop
        IL_00b5:  leave.s    IL_0119

        IL_00b7:  ldarg.0
        IL_00b8:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>u__1'
        IL_00bd:  stloc.1
        IL_00be:  ldarg.0
        IL_00bf:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>u__1'
        IL_00c4:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>
        IL_00ca:  ldarg.0
        IL_00cb:  ldc.i4.m1
        IL_00cc:  dup
        IL_00cd:  stloc.0
        IL_00ce:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
        IL_00d3:  ldloca.s   V_1
        IL_00d5:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetResult()
        IL_00da:  pop
        IL_00db:  leave.s    IL_00fe

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00dd:  stloc.s    V_4
        IL_00df:  ldarg.0
        IL_00e0:  ldc.i4.s   -2
        IL_00e2:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
        IL_00e7:  ldarg.0
        IL_00e8:  ldnull
        IL_00e9:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<model>5__1'
        IL_00ee:  ldarg.0
        IL_00ef:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
        IL_00f4:  ldloc.s    V_4
        IL_00f6:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_00fb:  nop
        IL_00fc:  leave.s    IL_0119

      }  // end handler
      IL_00fe:  ldarg.0
      IL_00ff:  ldc.i4.s   -2
      IL_0101:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
      IL_0106:  ldarg.0
      IL_0107:  ldnull
      IL_0108:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<model>5__1'
      IL_010d:  ldarg.0
      IL_010e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
      IL_0113:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0118:  nop
      IL_0119:  ret
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
    .field public class SkoolComm.Infrastructure.Repositores.StudentRepository '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> '<>u__1'
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
    } // end of method '<DeleteAsync>d__6'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       331 (0x14b)
      .maxstack  6
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> V_1,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_00e8

        IL_0011:  ldarg.0
        IL_0012:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0'::.ctor()
        IL_0017:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>8__1'
        IL_001c:  ldarg.0
        IL_001d:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>8__1'
        IL_0022:  ldarg.0
        IL_0023:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::id
        IL_0028:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0'::id
        IL_002d:  nop
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>4__this'
        IL_0034:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
        IL_0039:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StudentModel>()
        IL_003e:  ldtoken    SkoolComm.Infrastructure.Models.StudentModel
        IL_0043:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0048:  ldstr      "x"
        IL_004d:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0052:  stloc.2
        IL_0053:  ldloc.2
        IL_0054:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
        IL_0059:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_005e:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_0063:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0068:  ldarg.0
        IL_0069:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>8__1'
        IL_006e:  ldtoken    SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0'
        IL_0073:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0078:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_007d:  ldtoken    field int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0'::id
        IL_0082:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0087:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_008c:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_0091:  ldc.i4.1
        IL_0092:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_0097:  dup
        IL_0098:  ldc.i4.0
        IL_0099:  ldloc.2
        IL_009a:  stelem.ref
        IL_009b:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00a0:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00a5:  ldnull
        IL_00a6:  ldloca.s   V_3
        IL_00a8:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00ae:  ldloc.3
        IL_00af:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Delete(class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                              valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_00b4:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetAwaiter()
        IL_00b9:  stloc.1
        IL_00ba:  ldloca.s   V_1
        IL_00bc:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::get_IsCompleted()
        IL_00c1:  brtrue.s   IL_0104

        IL_00c3:  ldarg.0
        IL_00c4:  ldc.i4.0
        IL_00c5:  dup
        IL_00c6:  stloc.0
        IL_00c7:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
        IL_00cc:  ldarg.0
        IL_00cd:  ldloc.1
        IL_00ce:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>u__1'
        IL_00d3:  ldarg.0
        IL_00d4:  stloc.s    V_4
        IL_00d6:  ldarg.0
        IL_00d7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
        IL_00dc:  ldloca.s   V_1
        IL_00de:  ldloca.s   V_4
        IL_00e0:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>,class SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                  !!1&)
        IL_00e5:  nop
        IL_00e6:  leave.s    IL_014a

        IL_00e8:  ldarg.0
        IL_00e9:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>u__1'
        IL_00ee:  stloc.1
        IL_00ef:  ldarg.0
        IL_00f0:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>u__1'
        IL_00f5:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>
        IL_00fb:  ldarg.0
        IL_00fc:  ldc.i4.m1
        IL_00fd:  dup
        IL_00fe:  stloc.0
        IL_00ff:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
        IL_0104:  ldloca.s   V_1
        IL_0106:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetResult()
        IL_010b:  pop
        IL_010c:  leave.s    IL_012f

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_010e:  stloc.s    V_5
        IL_0110:  ldarg.0
        IL_0111:  ldc.i4.s   -2
        IL_0113:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
        IL_0118:  ldarg.0
        IL_0119:  ldnull
        IL_011a:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>8__1'
        IL_011f:  ldarg.0
        IL_0120:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
        IL_0125:  ldloc.s    V_5
        IL_0127:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_012c:  nop
        IL_012d:  leave.s    IL_014a

      }  // end handler
      IL_012f:  ldarg.0
      IL_0130:  ldc.i4.s   -2
      IL_0132:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
      IL_0137:  ldarg.0
      IL_0138:  ldnull
      IL_0139:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass6_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>8__1'
      IL_013e:  ldarg.0
      IL_013f:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
      IL_0144:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0149:  nop
      IL_014a:  ret
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
    .field public class SkoolComm.Infrastructure.Repositores.StudentRepository '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> '<response>5__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> '<>s__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> '<>u__1'
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
      // Code size       278 (0x116)
      .maxstack  3
      .locals init (int32 V_0,
               class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_000e

        IL_000c:  br.s       IL_0065

        IL_000e:  nop
        IL_000f:  ldarg.0
        IL_0010:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>4__this'
        IL_0015:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
        IL_001a:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StudentModel>()
        IL_001f:  ldloca.s   V_3
        IL_0021:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0027:  ldloc.3
        IL_0028:  ldc.i4.2
        IL_0029:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                           valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_002e:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetAwaiter()
        IL_0033:  stloc.2
        IL_0034:  ldloca.s   V_2
        IL_0036:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::get_IsCompleted()
        IL_003b:  brtrue.s   IL_0081

        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.0
        IL_003f:  dup
        IL_0040:  stloc.0
        IL_0041:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
        IL_0046:  ldarg.0
        IL_0047:  ldloc.2
        IL_0048:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>u__1'
        IL_004d:  ldarg.0
        IL_004e:  stloc.s    V_4
        IL_0050:  ldarg.0
        IL_0051:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
        IL_0056:  ldloca.s   V_2
        IL_0058:  ldloca.s   V_4
        IL_005a:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>,class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      !!1&)
        IL_005f:  nop
        IL_0060:  leave      IL_0115

        IL_0065:  ldarg.0
        IL_0066:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>u__1'
        IL_006b:  stloc.2
        IL_006c:  ldarg.0
        IL_006d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>u__1'
        IL_0072:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>
        IL_0078:  ldarg.0
        IL_0079:  ldc.i4.m1
        IL_007a:  dup
        IL_007b:  stloc.0
        IL_007c:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
        IL_0081:  ldarg.0
        IL_0082:  ldloca.s   V_2
        IL_0084:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetResult()
        IL_0089:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>s__2'
        IL_008e:  ldarg.0
        IL_008f:  ldarg.0
        IL_0090:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>s__2'
        IL_0095:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<response>5__1'
        IL_009a:  ldarg.0
        IL_009b:  ldnull
        IL_009c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>s__2'
        IL_00a1:  ldarg.0
        IL_00a2:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<response>5__1'
        IL_00a7:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>::get_Models()
        IL_00ac:  ldsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::'<>9__2_0'
        IL_00b1:  dup
        IL_00b2:  brtrue.s   IL_00cb

        IL_00b4:  pop
        IL_00b5:  ldsfld     class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c' SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::'<>9'
        IL_00ba:  ldftn      instance class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::'<GetAllAsync>b__2_0'(class SkoolComm.Infrastructure.Models.StudentModel)
        IL_00c0:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::.ctor(object,
                                                                                                                                                                                                    native int)
        IL_00c5:  dup
        IL_00c6:  stsfld     class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c'::'<>9__2_0'
        IL_00cb:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class SkoolComm.Infrastructure.Models.StudentModel,class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_00d0:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_00d5:  stloc.1
        IL_00d6:  leave.s    IL_00f9

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00d8:  stloc.s    V_5
        IL_00da:  ldarg.0
        IL_00db:  ldc.i4.s   -2
        IL_00dd:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
        IL_00e2:  ldarg.0
        IL_00e3:  ldnull
        IL_00e4:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<response>5__1'
        IL_00e9:  ldarg.0
        IL_00ea:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
        IL_00ef:  ldloc.s    V_5
        IL_00f1:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::SetException(class [System.Runtime]System.Exception)
        IL_00f6:  nop
        IL_00f7:  leave.s    IL_0115

      }  // end handler
      IL_00f9:  ldarg.0
      IL_00fa:  ldc.i4.s   -2
      IL_00fc:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
      IL_0101:  ldarg.0
      IL_0102:  ldnull
      IL_0103:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<response>5__1'
      IL_0108:  ldarg.0
      IL_0109:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
      IL_010e:  ldloc.1
      IL_010f:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::SetResult(!0)
      IL_0114:  nop
      IL_0115:  ret
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
    .field public class SkoolComm.Infrastructure.Repositores.StudentRepository '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> '<response>5__2'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private class SkoolComm.Infrastructure.Models.StudentModel '<model>5__3'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> '<>s__4'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> '<>u__1'
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
    } // end of method '<GetByIdAsync>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       513 (0x201)
      .maxstack  6
      .locals init (int32 V_0,
               class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> V_2,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_3,
               valuetype [System.Runtime]System.Threading.CancellationToken V_4,
               class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3' V_5,
               bool V_6,
               class [System.Runtime]System.Exception V_7)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_00ec

        IL_0011:  ldarg.0
        IL_0012:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0'::.ctor()
        IL_0017:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>8__1'
        IL_001c:  ldarg.0
        IL_001d:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>8__1'
        IL_0022:  ldarg.0
        IL_0023:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::id
        IL_0028:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0'::id
        IL_002d:  nop
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>4__this'
        IL_0034:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
        IL_0039:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StudentModel>()
        IL_003e:  ldtoken    SkoolComm.Infrastructure.Models.StudentModel
        IL_0043:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0048:  ldstr      "x"
        IL_004d:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0052:  stloc.3
        IL_0053:  ldloc.3
        IL_0054:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
        IL_0059:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_005e:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_0063:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0068:  ldarg.0
        IL_0069:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>8__1'
        IL_006e:  ldtoken    SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0'
        IL_0073:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0078:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_007d:  ldtoken    field int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0'::id
        IL_0082:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0087:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_008c:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_0091:  ldc.i4.1
        IL_0092:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_0097:  dup
        IL_0098:  ldc.i4.0
        IL_0099:  ldloc.3
        IL_009a:  stelem.ref
        IL_009b:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00a0:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00a5:  ldloca.s   V_4
        IL_00a7:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_00ad:  ldloc.s    V_4
        IL_00af:  ldc.i4.2
        IL_00b0:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Get(valuetype [System.Runtime]System.Threading.CancellationToken,
                                                                                                                                                                                                                                                                                                           valuetype [Supabase.Postgrest]Supabase.Postgrest.Constants/CountType)
        IL_00b5:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetAwaiter()
        IL_00ba:  stloc.2
        IL_00bb:  ldloca.s   V_2
        IL_00bd:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::get_IsCompleted()
        IL_00c2:  brtrue.s   IL_0108

        IL_00c4:  ldarg.0
        IL_00c5:  ldc.i4.0
        IL_00c6:  dup
        IL_00c7:  stloc.0
        IL_00c8:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
        IL_00cd:  ldarg.0
        IL_00ce:  ldloc.2
        IL_00cf:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>u__1'
        IL_00d4:  ldarg.0
        IL_00d5:  stloc.s    V_5
        IL_00d7:  ldarg.0
        IL_00d8:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
        IL_00dd:  ldloca.s   V_2
        IL_00df:  ldloca.s   V_5
        IL_00e1:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>,class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          !!1&)
        IL_00e6:  nop
        IL_00e7:  leave      IL_0200

        IL_00ec:  ldarg.0
        IL_00ed:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>u__1'
        IL_00f2:  stloc.2
        IL_00f3:  ldarg.0
        IL_00f4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>u__1'
        IL_00f9:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>
        IL_00ff:  ldarg.0
        IL_0100:  ldc.i4.m1
        IL_0101:  dup
        IL_0102:  stloc.0
        IL_0103:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
        IL_0108:  ldarg.0
        IL_0109:  ldloca.s   V_2
        IL_010b:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetResult()
        IL_0110:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>s__4'
        IL_0115:  ldarg.0
        IL_0116:  ldarg.0
        IL_0117:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>s__4'
        IL_011c:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<response>5__2'
        IL_0121:  ldarg.0
        IL_0122:  ldnull
        IL_0123:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>s__4'
        IL_0128:  ldarg.0
        IL_0129:  ldarg.0
        IL_012a:  ldfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<response>5__2'
        IL_012f:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>::get_Models()
        IL_0134:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Infrastructure.Models.StudentModel>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_0139:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_013e:  ldarg.0
        IL_013f:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_0144:  ldnull
        IL_0145:  ceq
        IL_0147:  stloc.s    V_6
        IL_0149:  ldloc.s    V_6
        IL_014b:  brfalse.s  IL_0154

        IL_014d:  ldnull
        IL_014e:  stloc.1
        IL_014f:  leave      IL_01d6

        IL_0154:  newobj     instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::.ctor()
        IL_0159:  dup
        IL_015a:  ldarg.0
        IL_015b:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_0160:  callvirt   instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
        IL_0165:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Id(int32)
        IL_016a:  nop
        IL_016b:  dup
        IL_016c:  ldarg.0
        IL_016d:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_0172:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_FirstName()
        IL_0177:  ldstr      " "
        IL_017c:  ldarg.0
        IL_017d:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_0182:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_LastName()
        IL_0187:  call       string [System.Runtime]System.String::Concat(string,
                                                                          string,
                                                                          string)
        IL_018c:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Name(string)
        IL_0191:  nop
        IL_0192:  dup
        IL_0193:  ldarg.0
        IL_0194:  ldfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_0199:  callvirt   instance string SkoolComm.Infrastructure.Models.StudentModel::get_Grade()
        IL_019e:  callvirt   instance void [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::set_Grade(string)
        IL_01a3:  nop
        IL_01a4:  stloc.1
        IL_01a5:  leave.s    IL_01d6

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_01a7:  stloc.s    V_7
        IL_01a9:  ldarg.0
        IL_01aa:  ldc.i4.s   -2
        IL_01ac:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
        IL_01b1:  ldarg.0
        IL_01b2:  ldnull
        IL_01b3:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>8__1'
        IL_01b8:  ldarg.0
        IL_01b9:  ldnull
        IL_01ba:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<response>5__2'
        IL_01bf:  ldarg.0
        IL_01c0:  ldnull
        IL_01c1:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
        IL_01c6:  ldarg.0
        IL_01c7:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
        IL_01cc:  ldloc.s    V_7
        IL_01ce:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::SetException(class [System.Runtime]System.Exception)
        IL_01d3:  nop
        IL_01d4:  leave.s    IL_0200

      }  // end handler
      IL_01d6:  ldarg.0
      IL_01d7:  ldc.i4.s   -2
      IL_01d9:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
      IL_01de:  ldarg.0
      IL_01df:  ldnull
      IL_01e0:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass3_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>8__1'
      IL_01e5:  ldarg.0
      IL_01e6:  ldnull
      IL_01e7:  stfld      class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<response>5__2'
      IL_01ec:  ldarg.0
      IL_01ed:  ldnull
      IL_01ee:  stfld      class SkoolComm.Infrastructure.Models.StudentModel SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<model>5__3'
      IL_01f3:  ldarg.0
      IL_01f4:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
      IL_01f9:  ldloc.1
      IL_01fa:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::SetResult(!0)
      IL_01ff:  nop
      IL_0200:  ret
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
    .field public class SkoolComm.Infrastructure.Repositores.StudentRepository '<>4__this'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' '<>8__1'
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> '<>u__1'
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
    } // end of method '<UpdateAsync>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       429 (0x1ad)
      .maxstack  6
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> V_1,
               class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_2,
               valuetype [System.Runtime]System.Threading.CancellationToken V_3,
               class SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5' V_4,
               class [System.Runtime]System.Exception V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_000c

        IL_000a:  br.s       IL_0011

        IL_000c:  br         IL_014a

        IL_0011:  ldarg.0
        IL_0012:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0'::.ctor()
        IL_0017:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
        IL_001c:  ldarg.0
        IL_001d:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
        IL_0022:  ldarg.0
        IL_0023:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::student
        IL_0028:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0'::student
        IL_002d:  nop
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>4__this'
        IL_0034:  ldfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
        IL_0039:  callvirt   instance class [Supabase]Supabase.Interfaces.ISupabaseTable`2<!!0,class [Supabase.Realtime]Supabase.Realtime.RealtimeChannel> [Supabase]Supabase.Client::From<class SkoolComm.Infrastructure.Models.StudentModel>()
        IL_003e:  ldtoken    SkoolComm.Infrastructure.Models.StudentModel
        IL_0043:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0048:  ldstr      "x"
        IL_004d:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_0052:  stloc.2
        IL_0053:  ldloc.2
        IL_0054:  ldtoken    method instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
        IL_0059:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_005e:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_0063:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_0068:  ldarg.0
        IL_0069:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
        IL_006e:  ldtoken    SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0'
        IL_0073:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0078:  call       class [System.Linq.Expressions]System.Linq.Expressions.ConstantExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                                             class [System.Runtime]System.Type)
        IL_007d:  ldtoken    field class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0'::student
        IL_0082:  call       class [System.Runtime]System.Reflection.FieldInfo [System.Runtime]System.Reflection.FieldInfo::GetFieldFromHandle(valuetype [System.Runtime]System.RuntimeFieldHandle)
        IL_0087:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Field(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Runtime]System.Reflection.FieldInfo)
        IL_008c:  ldtoken    method instance int32 [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::get_Id()
        IL_0091:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_0096:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_009b:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_00a0:  call       class [System.Linq.Expressions]System.Linq.Expressions.BinaryExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Equal(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.Expression)
        IL_00a5:  ldc.i4.1
        IL_00a6:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_00ab:  dup
        IL_00ac:  ldc.i4.0
        IL_00ad:  ldloc.2
        IL_00ae:  stelem.ref
        IL_00af:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                        class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00b4:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Where(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,bool>>)
        IL_00b9:  ldtoken    SkoolComm.Infrastructure.Models.StudentModel
        IL_00be:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_00c3:  ldstr      "x"
        IL_00c8:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                               string)
        IL_00cd:  stloc.2
        IL_00ce:  ldloc.2
        IL_00cf:  ldtoken    method instance string SkoolComm.Infrastructure.Models.StudentModel::get_Grade()
        IL_00d4:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
        IL_00d9:  castclass  [System.Runtime]System.Reflection.MethodInfo
        IL_00de:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                           class [System.Runtime]System.Reflection.MethodInfo)
        IL_00e3:  ldc.i4.1
        IL_00e4:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
        IL_00e9:  dup
        IL_00ea:  ldc.i4.0
        IL_00eb:  ldloc.2
        IL_00ec:  stelem.ref
        IL_00ed:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class SkoolComm.Infrastructure.Models.StudentModel,object>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                          class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
        IL_00f2:  ldarg.0
        IL_00f3:  ldfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
        IL_00f8:  ldfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0'::student
        IL_00fd:  callvirt   instance string [SkoolComm.Domain]SkoolComm.Domain.Entities.Student::get_Grade()
        IL_0102:  callvirt   instance class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<!0> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Set(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,object>>,
                                                                                                                                                                                                                                                       object)
        IL_0107:  ldnull
        IL_0108:  ldloca.s   V_3
        IL_010a:  initobj    [System.Runtime]System.Threading.CancellationToken
        IL_0110:  ldloc.3
        IL_0111:  callvirt   instance class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<!0>> class [Supabase.Postgrest]Supabase.Postgrest.Interfaces.IPostgrestTable`1<class SkoolComm.Infrastructure.Models.StudentModel>::Update(class [Supabase.Postgrest]Supabase.Postgrest.QueryOptions,
                                                                                                                                                                                                                                                                                                              valuetype [System.Runtime]System.Threading.CancellationToken)
        IL_0116:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Runtime]System.Threading.Tasks.Task`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetAwaiter()
        IL_011b:  stloc.1
        IL_011c:  ldloca.s   V_1
        IL_011e:  call       instance bool valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::get_IsCompleted()
        IL_0123:  brtrue.s   IL_0166

        IL_0125:  ldarg.0
        IL_0126:  ldc.i4.0
        IL_0127:  dup
        IL_0128:  stloc.0
        IL_0129:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
        IL_012e:  ldarg.0
        IL_012f:  ldloc.1
        IL_0130:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>u__1'
        IL_0135:  ldarg.0
        IL_0136:  stloc.s    V_4
        IL_0138:  ldarg.0
        IL_0139:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
        IL_013e:  ldloca.s   V_1
        IL_0140:  ldloca.s   V_4
        IL_0142:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>,class SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                                                                                  !!1&)
        IL_0147:  nop
        IL_0148:  leave.s    IL_01ac

        IL_014a:  ldarg.0
        IL_014b:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>u__1'
        IL_0150:  stloc.1
        IL_0151:  ldarg.0
        IL_0152:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>u__1'
        IL_0157:  initobj    valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>
        IL_015d:  ldarg.0
        IL_015e:  ldc.i4.m1
        IL_015f:  dup
        IL_0160:  stloc.0
        IL_0161:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
        IL_0166:  ldloca.s   V_1
        IL_0168:  call       instance !0 valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter`1<class [Supabase.Postgrest]Supabase.Postgrest.Responses.ModeledResponse`1<class SkoolComm.Infrastructure.Models.StudentModel>>::GetResult()
        IL_016d:  pop
        IL_016e:  leave.s    IL_0191

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0170:  stloc.s    V_5
        IL_0172:  ldarg.0
        IL_0173:  ldc.i4.s   -2
        IL_0175:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
        IL_017a:  ldarg.0
        IL_017b:  ldnull
        IL_017c:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
        IL_0181:  ldarg.0
        IL_0182:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
        IL_0187:  ldloc.s    V_5
        IL_0189:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_018e:  nop
        IL_018f:  leave.s    IL_01ac

      }  // end handler
      IL_0191:  ldarg.0
      IL_0192:  ldc.i4.s   -2
      IL_0194:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
      IL_0199:  ldarg.0
      IL_019a:  ldnull
      IL_019b:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository/'<>c__DisplayClass5_0' SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>8__1'
      IL_01a0:  ldarg.0
      IL_01a1:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
      IL_01a6:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_01ab:  nop
      IL_01ac:  ret
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

  .field private initonly class [Supabase]Supabase.Client _supabase
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Supabase]Supabase.Client supabase) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [Supabase]Supabase.Client SkoolComm.Infrastructure.Repositores.StudentRepository::_supabase
    IL_000f:  ret
  } // end of method StudentRepository::.ctor

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> 
          GetAllAsync() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 52 65 70 6F   // rastructure.Repo
                                                                                                                                                   73 69 74 6F 72 65 73 2E 53 74 75 64 65 6E 74 52   // sitores.StudentR
                                                                                                                                                   65 70 6F 73 69 74 6F 72 79 2B 3C 47 65 74 41 6C   // epository+<GetAl
                                                                                                                                                   6C 41 73 79 6E 63 3E 64 5F 5F 32 00 00 )          // lAsync>d__2..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.m1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>1__state'
    IL_001f:  ldloc.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::Start<class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'>(!!0&)
    IL_002c:  ldloc.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetAllAsync>d__2'::'<>t__builder'
    IL_0032:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [System.Collections]System.Collections.Generic.List`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>>::get_Task()
    IL_0037:  ret
  } // end of method StudentRepository::GetAllAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> 
          GetByIdAsync(int32 id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 49 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..ISkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 52 65 70 6F   // rastructure.Repo
                                                                                                                                                   73 69 74 6F 72 65 73 2E 53 74 75 64 65 6E 74 52   // sitores.StudentR
                                                                                                                                                   65 70 6F 73 69 74 6F 72 79 2B 3C 47 65 74 42 79   // epository+<GetBy
                                                                                                                                                   49 64 41 73 79 6E 63 3E 64 5F 5F 33 00 00 )       // IdAsync>d__3..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::id
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::Start<class SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student> SkoolComm.Infrastructure.Repositores.StudentRepository/'<GetByIdAsync>d__3'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task`1<!0> valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student>::get_Task()
    IL_003e:  ret
  } // end of method StudentRepository::GetByIdAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          AddAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 45 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..ESkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 52 65 70 6F   // rastructure.Repo
                                                                                                                                                   73 69 74 6F 72 65 73 2E 53 74 75 64 65 6E 74 52   // sitores.StudentR
                                                                                                                                                   65 70 6F 73 69 74 6F 72 79 2B 3C 41 64 64 41 73   // epository+<AddAs
                                                                                                                                                   79 6E 63 3E 64 5F 5F 34 00 00 )                   // ync>d__4..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::student
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<AddAsync>d__4'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentRepository::AddAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student student) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 52 65 70 6F   // rastructure.Repo
                                                                                                                                                   73 69 74 6F 72 65 73 2E 53 74 75 64 65 6E 74 52   // sitores.StudentR
                                                                                                                                                   65 70 6F 73 69 74 6F 72 79 2B 3C 55 70 64 61 74   // epository+<Updat
                                                                                                                                                   65 41 73 79 6E 63 3E 64 5F 5F 35 00 00 )          // eAsync>d__5..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      class [SkoolComm.Domain]SkoolComm.Domain.Entities.Student SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::student
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<UpdateAsync>d__5'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentRepository::UpdateAsync

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(int32 id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 48 53 6B 6F 6F 6C 43 6F 6D 6D 2E 49 6E 66   // ..HSkoolComm.Inf
                                                                                                                                                   72 61 73 74 72 75 63 74 75 72 65 2E 52 65 70 6F   // rastructure.Repo
                                                                                                                                                   73 69 74 6F 72 65 73 2E 53 74 75 64 65 6E 74 52   // sitores.StudentR
                                                                                                                                                   65 70 6F 73 69 74 6F 72 79 2B 3C 44 65 6C 65 74   // epository+<Delet
                                                                                                                                                   65 41 73 79 6E 63 3E 64 5F 5F 36 00 00 )          // eAsync>d__6..
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  2
    .locals init (class SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6' V_0)
    IL_0000:  newobj     instance void SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000c:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  stfld      class SkoolComm.Infrastructure.Repositores.StudentRepository SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>4__this'
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::id
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.m1
    IL_0021:  stfld      int32 SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>1__state'
    IL_0026:  ldloc.0
    IL_0027:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<class SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'>(!!0&)
    IL_0033:  ldloc.0
    IL_0034:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder SkoolComm.Infrastructure.Repositores.StudentRepository/'<DeleteAsync>d__6'::'<>t__builder'
    IL_0039:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_003e:  ret
  } // end of method StudentRepository::DeleteAsync

} // end of class SkoolComm.Infrastructure.Repositores.StudentRepository

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.AnnouncementRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 0C 61 6E 6E 6F 75 6E 63 65 6D 65 6E 74 00   // ...announcement.
                                                                                                            00 ) 
  .field private int32 '<AnnouncementId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<StaffId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Title>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Content>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<DatePosted>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<TargetAudience>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_AnnouncementId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::'<AnnouncementId>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_AnnouncementId

  .method public hidebysig specialname instance void 
          set_AnnouncementId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::'<AnnouncementId>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_AnnouncementId

  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_StaffId

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_Title

  .method public hidebysig specialname instance string 
          get_Content() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Content>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_Content

  .method public hidebysig specialname instance void 
          set_Content(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Content>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_Content

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_DatePosted() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AnnouncementRecord::'<DatePosted>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_DatePosted

  .method public hidebysig specialname instance void 
          set_DatePosted(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AnnouncementRecord::'<DatePosted>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_DatePosted

  .method public hidebysig specialname instance string 
          get_TargetAudience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<TargetAudience>k__BackingField'
    IL_0006:  ret
  } // end of method AnnouncementRecord::get_TargetAudience

  .method public hidebysig specialname instance void 
          set_TargetAudience(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<TargetAudience>k__BackingField'
    IL_0007:  ret
  } // end of method AnnouncementRecord::set_TargetAudience

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Title>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<Content>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Infrastructure.Models.AnnouncementRecord::'<TargetAudience>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_0027:  nop
    IL_0028:  ret
  } // end of method AnnouncementRecord::.ctor

  .property instance int32 AnnouncementId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 0E 61 6E 6E 6F 75 6E 63 65 6D 65 6E 74 69   // ...announcementi
                                                                                                                 64 00 00 00 )                                     // d...
    .get instance int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::get_AnnouncementId()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_AnnouncementId(int32)
  } // end of property AnnouncementRecord::AnnouncementId
  .property instance int32 StaffId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 07 73 74 61 66 66 69 64 00 00 00 00 00 00   // ...staffid......
                                                                                                             00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.AnnouncementRecord::get_StaffId()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_StaffId(int32)
  } // end of property AnnouncementRecord::StaffId
  .property instance string Title()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 74 69 74 6C 65 00 00 00 00 00 00 00 00 ) // ...title........
    .get instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_Title()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_Title(string)
  } // end of property AnnouncementRecord::Title
  .property instance string Content()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 07 63 6F 6E 74 65 6E 74 00 00 00 00 00 00   // ...content......
                                                                                                             00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_Content()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_Content(string)
  } // end of property AnnouncementRecord::Content
  .property instance valuetype [System.Runtime]System.DateTime
          DatePosted()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0A 64 61 74 65 70 6F 73 74 65 64 00 00 00   // ...dateposted...
                                                                                                             00 00 00 00 00 ) 
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AnnouncementRecord::get_DatePosted()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_DatePosted(valuetype [System.Runtime]System.DateTime)
  } // end of property AnnouncementRecord::DatePosted
  .property instance string TargetAudience()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0E 74 61 72 67 65 74 61 75 64 69 65 6E 63   // ...targetaudienc
                                                                                                             65 00 00 00 00 00 00 00 00 )                      // e........
    .get instance string SkoolComm.Infrastructure.Models.AnnouncementRecord::get_TargetAudience()
    .set instance void SkoolComm.Infrastructure.Models.AnnouncementRecord::set_TargetAudience(string)
  } // end of property AnnouncementRecord::TargetAudience
} // end of class SkoolComm.Infrastructure.Models.AnnouncementRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.AttendanceRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 0A 61 74 74 65 6E 64 61 6E 63 65 00 00 )    // ...attendance..
  .field private int32 '<AttendanceId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<LearnerId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<RecordedBy>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<Date>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Status>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_AttendanceId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<AttendanceId>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceRecord::get_AttendanceId

  .method public hidebysig specialname instance void 
          set_AttendanceId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<AttendanceId>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceRecord::set_AttendanceId

  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceRecord::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceRecord::set_LearnerId

  .method public hidebysig specialname instance int32 
          get_RecordedBy() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<RecordedBy>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceRecord::get_RecordedBy

  .method public hidebysig specialname instance void 
          set_RecordedBy(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.AttendanceRecord::'<RecordedBy>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceRecord::set_RecordedBy

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_Date() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AttendanceRecord::'<Date>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceRecord::get_Date

  .method public hidebysig specialname instance void 
          set_Date(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AttendanceRecord::'<Date>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceRecord::set_Date

  .method public hidebysig specialname instance string 
          get_Status() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.AttendanceRecord::'<Status>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceRecord::get_Status

  .method public hidebysig specialname instance void 
          set_Status(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.AttendanceRecord::'<Status>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceRecord::set_Status

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.AttendanceRecord::'<Status>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_0011:  nop
    IL_0012:  ret
  } // end of method AttendanceRecord::.ctor

  .property instance int32 AttendanceId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 0C 61 74 74 65 6E 64 61 6E 63 65 69 64 00   // ...attendanceid.
                                                                                                                 00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.AttendanceRecord::get_AttendanceId()
    .set instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_AttendanceId(int32)
  } // end of property AttendanceRecord::AttendanceId
  .property instance int32 LearnerId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 6C 65 61 72 6E 65 72 69 64 00 00 00 00   // ...learnerid....
                                                                                                             00 00 00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.AttendanceRecord::get_LearnerId()
    .set instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_LearnerId(int32)
  } // end of property AttendanceRecord::LearnerId
  .property instance int32 RecordedBy()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0A 72 65 63 6F 72 64 65 64 62 79 00 00 00   // ...recordedby...
                                                                                                             00 00 00 00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.AttendanceRecord::get_RecordedBy()
    .set instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_RecordedBy(int32)
  } // end of property AttendanceRecord::RecordedBy
  .property instance valuetype [System.Runtime]System.DateTime
          Date()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 04 64 61 74 65 00 00 00 00 00 00 00 00 )    // ...date........
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.AttendanceRecord::get_Date()
    .set instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_Date(valuetype [System.Runtime]System.DateTime)
  } // end of property AttendanceRecord::Date
  .property instance string Status()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 06 73 74 61 74 75 73 00 00 00 00 00 00 00   // ...status.......
                                                                                                             00 ) 
    .get instance string SkoolComm.Infrastructure.Models.AttendanceRecord::get_Status()
    .set instance void SkoolComm.Infrastructure.Models.AttendanceRecord::set_Status(string)
  } // end of property AttendanceRecord::Status
} // end of class SkoolComm.Infrastructure.Models.AttendanceRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.BehaviouralPointRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 12 62 65 68 61 76 69 6F 75 72 61 6C 5F 70   // ...behavioural_p
                                                                                                            6F 69 6E 74 73 00 00 )                            // oints..
  .field private int32 '<PointId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<LearnerId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<IssuedBy>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<OffenceCode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Level>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<OffenceName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Points>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Reason>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<DateRecorded>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_PointId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<PointId>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_PointId

  .method public hidebysig specialname instance void 
          set_PointId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<PointId>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_PointId

  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_LearnerId

  .method public hidebysig specialname instance int32 
          get_IssuedBy() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<IssuedBy>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_IssuedBy

  .method public hidebysig specialname instance void 
          set_IssuedBy(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<IssuedBy>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_IssuedBy

  .method public hidebysig specialname instance string 
          get_OffenceCode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceCode>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_OffenceCode

  .method public hidebysig specialname instance void 
          set_OffenceCode(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceCode>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_OffenceCode

  .method public hidebysig specialname instance int32 
          get_Level() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Level>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_Level

  .method public hidebysig specialname instance void 
          set_Level(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Level>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_Level

  .method public hidebysig specialname instance string 
          get_OffenceName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceName>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_OffenceName

  .method public hidebysig specialname instance void 
          set_OffenceName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceName>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_OffenceName

  .method public hidebysig specialname instance int32 
          get_Points() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Points>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_Points

  .method public hidebysig specialname instance void 
          set_Points(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Points>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_Points

  .method public hidebysig specialname instance string 
          get_Reason() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Reason>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_Reason

  .method public hidebysig specialname instance void 
          set_Reason(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<Reason>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_Reason

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_DateRecorded() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<DateRecorded>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviouralPointRecord::get_DateRecorded

  .method public hidebysig specialname instance void 
          set_DateRecorded(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<DateRecorded>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviouralPointRecord::set_DateRecorded

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceCode>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::'<OffenceName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_001c:  nop
    IL_001d:  ret
  } // end of method BehaviouralPointRecord::.ctor

  .property instance int32 PointId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 07 70 6F 69 6E 74 69 64 00 00 00 )          // ...pointid...
    .get instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_PointId()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_PointId(int32)
  } // end of property BehaviouralPointRecord::PointId
  .property instance int32 LearnerId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 6C 65 61 72 6E 65 72 69 64 00 00 00 00   // ...learnerid....
                                                                                                             00 00 00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_LearnerId()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_LearnerId(int32)
  } // end of property BehaviouralPointRecord::LearnerId
  .property instance int32 IssuedBy()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 08 69 73 73 75 65 64 62 79 00 00 00 00 00   // ...issuedby.....
                                                                                                             00 00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_IssuedBy()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_IssuedBy(int32)
  } // end of property BehaviouralPointRecord::IssuedBy
  .property instance string OffenceCode()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0B 6F 66 66 65 6E 63 65 63 6F 64 65 00 00   // ...offencecode..
                                                                                                             00 00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_OffenceCode()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_OffenceCode(string)
  } // end of property BehaviouralPointRecord::OffenceCode
  .property instance int32 Level()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 6C 65 76 65 6C 00 00 00 00 00 00 00 00 ) // ...level........
    .get instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Level()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Level(int32)
  } // end of property BehaviouralPointRecord::Level
  .property instance string OffenceName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0B 6F 66 66 65 6E 63 65 6E 61 6D 65 00 00   // ...offencename..
                                                                                                             00 00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_OffenceName()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_OffenceName(string)
  } // end of property BehaviouralPointRecord::OffenceName
  .property instance int32 Points()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 06 70 6F 69 6E 74 73 00 00 00 00 00 00 00   // ...points.......
                                                                                                             00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Points()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Points(int32)
  } // end of property BehaviouralPointRecord::Points
  .property instance string Reason()
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 06 72 65 61 73 6F 6E 00 00 00 00 00 00 00   // ...reason.......
                                                                                                             00 ) 
    .get instance string SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_Reason()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_Reason(string)
  } // end of property BehaviouralPointRecord::Reason
  .property instance valuetype [System.Runtime]System.DateTime
          DateRecorded()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0C 64 61 74 65 72 65 63 6F 72 64 65 64 00   // ...daterecorded.
                                                                                                             00 00 00 00 00 00 00 ) 
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.BehaviouralPointRecord::get_DateRecorded()
    .set instance void SkoolComm.Infrastructure.Models.BehaviouralPointRecord::set_DateRecorded(valuetype [System.Runtime]System.DateTime)
  } // end of property BehaviouralPointRecord::DateRecorded
} // end of class SkoolComm.Infrastructure.Models.BehaviouralPointRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.EventRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 05 65 76 65 6E 74 00 00 )                   // ...event..
  .field private int32 '<EventId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<StaffId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Title>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Description>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<EventDate>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Location>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_EventId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.EventRecord::'<EventId>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_EventId

  .method public hidebysig specialname instance void 
          set_EventId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.EventRecord::'<EventId>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_EventId

  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.EventRecord::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.EventRecord::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_StaffId

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_Title

  .method public hidebysig specialname instance string 
          get_Description() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Description>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_Description

  .method public hidebysig specialname instance void 
          set_Description(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Description>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_Description

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_EventDate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.EventRecord::'<EventDate>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_EventDate

  .method public hidebysig specialname instance void 
          set_EventDate(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.EventRecord::'<EventDate>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_EventDate

  .method public hidebysig specialname instance string 
          get_Location() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Location>k__BackingField'
    IL_0006:  ret
  } // end of method EventRecord::get_Location

  .method public hidebysig specialname instance void 
          set_Location(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Location>k__BackingField'
    IL_0007:  ret
  } // end of method EventRecord::set_Location

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Title>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Description>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Infrastructure.Models.EventRecord::'<Location>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_0027:  nop
    IL_0028:  ret
  } // end of method EventRecord::.ctor

  .property instance int32 EventId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 07 65 76 65 6E 74 69 64 00 00 00 )          // ...eventid...
    .get instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_EventId()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_EventId(int32)
  } // end of property EventRecord::EventId
  .property instance int32 StaffId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 07 73 74 61 66 66 69 64 00 00 00 00 00 00   // ...staffid......
                                                                                                             00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.EventRecord::get_StaffId()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_StaffId(int32)
  } // end of property EventRecord::StaffId
  .property instance string Title()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 74 69 74 6C 65 00 00 00 00 00 00 00 00 ) // ...title........
    .get instance string SkoolComm.Infrastructure.Models.EventRecord::get_Title()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_Title(string)
  } // end of property EventRecord::Title
  .property instance string Description()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0B 64 65 73 63 72 69 70 74 69 6F 6E 00 00   // ...description..
                                                                                                             00 00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.EventRecord::get_Description()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_Description(string)
  } // end of property EventRecord::Description
  .property instance valuetype [System.Runtime]System.DateTime
          EventDate()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 65 76 65 6E 74 64 61 74 65 00 00 00 00   // ...eventdate....
                                                                                                             00 00 00 00 ) 
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.EventRecord::get_EventDate()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_EventDate(valuetype [System.Runtime]System.DateTime)
  } // end of property EventRecord::EventDate
  .property instance string Location()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 08 6C 6F 63 61 74 69 6F 6E 00 00 00 00 00   // ...location.....
                                                                                                             00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.EventRecord::get_Location()
    .set instance void SkoolComm.Infrastructure.Models.EventRecord::set_Location(string)
  } // end of property EventRecord::Location
} // end of class SkoolComm.Infrastructure.Models.EventRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.LearnerRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 07 6C 65 61 72 6E 65 72 00 00 )             // ...learner..
  .field private int32 '<LearnerId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<FirstName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<LastName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Grade>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Class>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.LearnerRecord::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerRecord::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.LearnerRecord::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerRecord::set_LearnerId

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerRecord::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerRecord::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerRecord::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerRecord::set_LastName

  .method public hidebysig specialname instance string 
          get_Grade() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Grade>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerRecord::get_Grade

  .method public hidebysig specialname instance void 
          set_Grade(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Grade>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerRecord::set_Grade

  .method public hidebysig specialname instance string 
          get_Class() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Class>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerRecord::get_Class

  .method public hidebysig specialname instance void 
          set_Class(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Class>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerRecord::set_Class

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<FirstName>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<LastName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Grade>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldstr      ""
    IL_0027:  stfld      string SkoolComm.Infrastructure.Models.LearnerRecord::'<Class>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_0032:  nop
    IL_0033:  ret
  } // end of method LearnerRecord::.ctor

  .property instance int32 LearnerId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 09 6C 65 61 72 6E 65 72 69 64 00 00 00 )    // ...learnerid...
    .get instance int32 SkoolComm.Infrastructure.Models.LearnerRecord::get_LearnerId()
    .set instance void SkoolComm.Infrastructure.Models.LearnerRecord::set_LearnerId(int32)
  } // end of property LearnerRecord::LearnerId
  .property instance string FirstName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 66 69 72 73 74 6E 61 6D 65 00 00 00 00   // ...firstname....
                                                                                                             00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_FirstName()
    .set instance void SkoolComm.Infrastructure.Models.LearnerRecord::set_FirstName(string)
  } // end of property LearnerRecord::FirstName
  .property instance string LastName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 08 6C 61 73 74 6E 61 6D 65 00 00 00 00 00   // ...lastname.....
                                                                                                             00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_LastName()
    .set instance void SkoolComm.Infrastructure.Models.LearnerRecord::set_LastName(string)
  } // end of property LearnerRecord::LastName
  .property instance string Grade()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 67 72 61 64 65 00 00 00 00 00 00 00 00 ) // ...grade........
    .get instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Grade()
    .set instance void SkoolComm.Infrastructure.Models.LearnerRecord::set_Grade(string)
  } // end of property LearnerRecord::Grade
  .property instance string Class()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 63 6C 61 73 73 00 00 00 00 00 00 00 00 ) // ...class........
    .get instance string SkoolComm.Infrastructure.Models.LearnerRecord::get_Class()
    .set instance void SkoolComm.Infrastructure.Models.LearnerRecord::set_Class(string)
  } // end of property LearnerRecord::Class
} // end of class SkoolComm.Infrastructure.Models.LearnerRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.StaffRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 05 73 74 61 66 66 00 00 )                   // ...staff..
  .field private int32 '<StaffId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<AuthUserId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Role>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<FirstName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<LastName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Email>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Status>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.StaffRecord::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.StaffRecord::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_StaffId

  .method public hidebysig specialname instance string 
          get_AuthUserId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<AuthUserId>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_AuthUserId

  .method public hidebysig specialname instance void 
          set_AuthUserId(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<AuthUserId>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_AuthUserId

  .method public hidebysig specialname instance string 
          get_Role() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Role>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_Role

  .method public hidebysig specialname instance void 
          set_Role(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Role>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_Role

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_LastName

  .method public hidebysig specialname instance string 
          get_Email() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Email>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_Email

  .method public hidebysig specialname instance void 
          set_Email(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Email>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_Email

  .method public hidebysig specialname instance string 
          get_Status() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Status>k__BackingField'
    IL_0006:  ret
  } // end of method StaffRecord::get_Status

  .method public hidebysig specialname instance void 
          set_Status(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Status>k__BackingField'
    IL_0007:  ret
  } // end of method StaffRecord::set_Status

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       74 (0x4a)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<AuthUserId>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Role>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001c:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<FirstName>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0027:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<LastName>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0032:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Email>k__BackingField'
    IL_0037:  ldarg.0
    IL_0038:  ldsfld     string [System.Runtime]System.String::Empty
    IL_003d:  stfld      string SkoolComm.Infrastructure.Models.StaffRecord::'<Status>k__BackingField'
    IL_0042:  ldarg.0
    IL_0043:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_0048:  nop
    IL_0049:  ret
  } // end of method StaffRecord::.ctor

  .property instance int32 StaffId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 07 73 74 61 66 66 69 64 00 00 00 )          // ...staffid...
    .get instance int32 SkoolComm.Infrastructure.Models.StaffRecord::get_StaffId()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_StaffId(int32)
  } // end of property StaffRecord::StaffId
  .property instance string AuthUserId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0A 61 75 74 68 75 73 65 72 69 64 00 00 00   // ...authuserid...
                                                                                                             00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_AuthUserId()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_AuthUserId(string)
  } // end of property StaffRecord::AuthUserId
  .property instance string Role()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 04 72 6F 6C 65 00 00 00 00 00 00 00 00 )    // ...role........
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Role()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_Role(string)
  } // end of property StaffRecord::Role
  .property instance string FirstName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0A 66 69 72 73 74 5F 6E 61 6D 65 00 00 00   // ...first_name...
                                                                                                             00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_FirstName()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_FirstName(string)
  } // end of property StaffRecord::FirstName
  .property instance string LastName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 6C 61 73 74 5F 6E 61 6D 65 00 00 00 00   // ...last_name....
                                                                                                             00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_LastName()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_LastName(string)
  } // end of property StaffRecord::LastName
  .property instance string Email()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 65 6D 61 69 6C 00 00 00 00 00 00 00 00 ) // ...email........
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Email()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_Email(string)
  } // end of property StaffRecord::Email
  .property instance string Status()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 06 73 74 61 74 75 73 00 00 00 00 00 00 00   // ...status.......
                                                                                                             00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StaffRecord::get_Status()
    .set instance void SkoolComm.Infrastructure.Models.StaffRecord::set_Status(string)
  } // end of property StaffRecord::Status
} // end of class SkoolComm.Infrastructure.Models.StaffRecord

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.StudentModel
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 07 6C 65 61 72 6E 65 72 00 00 )             // ...learner..
  .field private int32 '<LearnerId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<FirstName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<LastName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Grade>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Class>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<Dob>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<IdNumber>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.StudentModel::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.StudentModel::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_LearnerId

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StudentModel::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StudentModel::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_LastName

  .method public hidebysig specialname instance string 
          get_Grade() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Grade>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_Grade

  .method public hidebysig specialname instance void 
          set_Grade(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Grade>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_Grade

  .method public hidebysig specialname instance string 
          get_Class() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Class>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_Class

  .method public hidebysig specialname instance void 
          set_Class(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Class>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_Class

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_Dob() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.StudentModel::'<Dob>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_Dob

  .method public hidebysig specialname instance void 
          set_Dob(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.StudentModel::'<Dob>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_Dob

  .method public hidebysig specialname instance string 
          get_IdNumber() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.StudentModel::'<IdNumber>k__BackingField'
    IL_0006:  ret
  } // end of method StudentModel::get_IdNumber

  .method public hidebysig specialname instance void 
          set_IdNumber(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<IdNumber>k__BackingField'
    IL_0007:  ret
  } // end of method StudentModel::set_IdNumber

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<FirstName>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<LastName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001c:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Grade>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0027:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<Class>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0032:  stfld      string SkoolComm.Infrastructure.Models.StudentModel::'<IdNumber>k__BackingField'
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_003d:  nop
    IL_003e:  ret
  } // end of method StudentModel::.ctor

  .property instance int32 LearnerId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 09 6C 65 61 72 6E 65 72 69 64 00 00 00 )    // ...learnerid...
    .get instance int32 SkoolComm.Infrastructure.Models.StudentModel::get_LearnerId()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_LearnerId(int32)
  } // end of property StudentModel::LearnerId
  .property instance string FirstName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 66 69 72 73 74 6E 61 6D 65 00 00 00 00   // ...firstname....
                                                                                                             00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StudentModel::get_FirstName()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_FirstName(string)
  } // end of property StudentModel::FirstName
  .property instance string LastName()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 08 6C 61 73 74 6E 61 6D 65 00 00 00 00 00   // ...lastname.....
                                                                                                             00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StudentModel::get_LastName()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_LastName(string)
  } // end of property StudentModel::LastName
  .property instance string Grade()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 67 72 61 64 65 00 00 00 00 00 00 00 00 ) // ...grade........
    .get instance string SkoolComm.Infrastructure.Models.StudentModel::get_Grade()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_Grade(string)
  } // end of property StudentModel::Grade
  .property instance string Class()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 63 6C 61 73 73 00 00 00 00 00 00 00 00 ) // ...class........
    .get instance string SkoolComm.Infrastructure.Models.StudentModel::get_Class()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_Class(string)
  } // end of property StudentModel::Class
  .property instance valuetype [System.Runtime]System.DateTime
          Dob()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 03 64 6F 62 00 00 00 00 00 00 00 00 )       // ...dob........
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.StudentModel::get_Dob()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_Dob(valuetype [System.Runtime]System.DateTime)
  } // end of property StudentModel::Dob
  .property instance string IdNumber()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 08 69 64 6E 75 6D 62 65 72 00 00 00 00 00   // ...idnumber.....
                                                                                                             00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.StudentModel::get_IdNumber()
    .set instance void SkoolComm.Infrastructure.Models.StudentModel::set_IdNumber(string)
  } // end of property StudentModel::IdNumber
} // end of class SkoolComm.Infrastructure.Models.StudentModel

.class public auto ansi beforefieldinit SkoolComm.Infrastructure.Models.YearPlanRecord
       extends [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.TableAttribute::.ctor(string) = ( 01 00 09 79 65 61 72 5F 70 6C 61 6E 00 00 )       // ...year_plan..
  .field private int32 '<YearPlanId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<StaffId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Title>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Description>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<StartDate>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.DateTime '<EndDate>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_YearPlanId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.YearPlanRecord::'<YearPlanId>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_YearPlanId

  .method public hidebysig specialname instance void 
          set_YearPlanId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.YearPlanRecord::'<YearPlanId>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_YearPlanId

  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Infrastructure.Models.YearPlanRecord::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Infrastructure.Models.YearPlanRecord::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_StaffId

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_Title

  .method public hidebysig specialname instance string 
          get_Description() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Description>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_Description

  .method public hidebysig specialname instance void 
          set_Description(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Description>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_Description

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_StartDate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::'<StartDate>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_StartDate

  .method public hidebysig specialname instance void 
          set_StartDate(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::'<StartDate>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_StartDate

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_EndDate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::'<EndDate>k__BackingField'
    IL_0006:  ret
  } // end of method YearPlanRecord::get_EndDate

  .method public hidebysig specialname instance void 
          set_EndDate(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::'<EndDate>k__BackingField'
    IL_0007:  ret
  } // end of method YearPlanRecord::set_EndDate

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Title>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Infrastructure.Models.YearPlanRecord::'<Description>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [Supabase.Postgrest]Supabase.Postgrest.Models.BaseModel::.ctor()
    IL_001c:  nop
    IL_001d:  ret
  } // end of method YearPlanRecord::.ctor

  .property instance int32 YearPlanId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.PrimaryKeyAttribute::.ctor(string,
                                                                                                       bool) = ( 01 00 0A 79 65 61 72 70 6C 61 6E 69 64 00 00 00 ) // ...yearplanid...
    .get instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_YearPlanId()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_YearPlanId(int32)
  } // end of property YearPlanRecord::YearPlanId
  .property instance int32 StaffId()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 07 73 74 61 66 66 69 64 00 00 00 00 00 00   // ...staffid......
                                                                                                             00 00 ) 
    .get instance int32 SkoolComm.Infrastructure.Models.YearPlanRecord::get_StaffId()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_StaffId(int32)
  } // end of property YearPlanRecord::StaffId
  .property instance string Title()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 05 74 69 74 6C 65 00 00 00 00 00 00 00 00 ) // ...title........
    .get instance string SkoolComm.Infrastructure.Models.YearPlanRecord::get_Title()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Title(string)
  } // end of property YearPlanRecord::Title
  .property instance string Description()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 0B 64 65 73 63 72 69 70 74 69 6F 6E 00 00   // ...description..
                                                                                                             00 00 00 00 00 00 ) 
    .get instance string SkoolComm.Infrastructure.Models.YearPlanRecord::get_Description()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_Description(string)
  } // end of property YearPlanRecord::Description
  .property instance valuetype [System.Runtime]System.DateTime
          StartDate()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 09 73 74 61 72 74 64 61 74 65 00 00 00 00   // ...startdate....
                                                                                                             00 00 00 00 ) 
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::get_StartDate()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_StartDate(valuetype [System.Runtime]System.DateTime)
  } // end of property YearPlanRecord::StartDate
  .property instance valuetype [System.Runtime]System.DateTime
          EndDate()
  {
    .custom instance void [Supabase.Postgrest]Supabase.Postgrest.Attributes.ColumnAttribute::.ctor(string,
                                                                                                   valuetype [System.Text.Json]System.Text.Json.Serialization.JsonIgnoreCondition,
                                                                                                   bool,
                                                                                                   bool) = ( 01 00 07 65 6E 64 64 61 74 65 00 00 00 00 00 00   // ...enddate......
                                                                                                             00 00 ) 
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Infrastructure.Models.YearPlanRecord::get_EndDate()
    .set instance void SkoolComm.Infrastructure.Models.YearPlanRecord::set_EndDate(valuetype [System.Runtime]System.DateTime)
  } // end of property YearPlanRecord::EndDate
} // end of class SkoolComm.Infrastructure.Models.YearPlanRecord


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\infrastructure.res
