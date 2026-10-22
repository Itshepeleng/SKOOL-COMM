
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly extern System.Linq
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 10:0:0:0
}
.assembly SkoolComm.Domain
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 10 53 6B 6F 6F 6C 43 6F 6D 6D 2E 44 6F 6D   // ...SkoolComm.Dom
                                                                                                      61 69 6E 00 00 )                                  // ain..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 10 53 6B 6F 6F 6C 43 6F 6D 6D 2E 44 6F 6D   // ...SkoolComm.Dom
                                                                                                      61 69 6E 00 00 )                                  // ain..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 10 53 6B 6F 6F 6C 43 6F 6D 6D 2E 44 6F 6D   // ...SkoolComm.Dom
                                                                                                    61 69 6E 00 00 )                                  // ain..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module SkoolComm.Domain.dll
// MVID: {C8837A92-7A71-4555-8678-9880F706A619}
.custom instance void [System.Runtime]System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x058B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.Announcement
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
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
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.Announcement::'<AnnouncementId>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_AnnouncementId

  .method public hidebysig specialname instance void 
          set_AnnouncementId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.Announcement::'<AnnouncementId>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_AnnouncementId

  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.Announcement::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.Announcement::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_StaffId

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.Announcement::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.Announcement::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_Title

  .method public hidebysig specialname instance string 
          get_Content() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.Announcement::'<Content>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_Content

  .method public hidebysig specialname instance void 
          set_Content(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.Announcement::'<Content>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_Content

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_DatePosted() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.Announcement::'<DatePosted>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_DatePosted

  .method public hidebysig specialname instance void 
          set_DatePosted(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.Announcement::'<DatePosted>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_DatePosted

  .method public hidebysig specialname instance string 
          get_TargetAudience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.Announcement::'<TargetAudience>k__BackingField'
    IL_0006:  ret
  } // end of method Announcement::get_TargetAudience

  .method public hidebysig specialname instance void 
          set_TargetAudience(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.Announcement::'<TargetAudience>k__BackingField'
    IL_0007:  ret
  } // end of method Announcement::set_TargetAudience

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.Announcement::'<Title>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.Announcement::'<Content>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Domain.Models.Announcement::'<TargetAudience>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0027:  nop
    IL_0028:  ret
  } // end of method Announcement::.ctor

  .property instance int32 AnnouncementId()
  {
    .get instance int32 SkoolComm.Domain.Models.Announcement::get_AnnouncementId()
    .set instance void SkoolComm.Domain.Models.Announcement::set_AnnouncementId(int32)
  } // end of property Announcement::AnnouncementId
  .property instance int32 StaffId()
  {
    .get instance int32 SkoolComm.Domain.Models.Announcement::get_StaffId()
    .set instance void SkoolComm.Domain.Models.Announcement::set_StaffId(int32)
  } // end of property Announcement::StaffId
  .property instance string Title()
  {
    .get instance string SkoolComm.Domain.Models.Announcement::get_Title()
    .set instance void SkoolComm.Domain.Models.Announcement::set_Title(string)
  } // end of property Announcement::Title
  .property instance string Content()
  {
    .get instance string SkoolComm.Domain.Models.Announcement::get_Content()
    .set instance void SkoolComm.Domain.Models.Announcement::set_Content(string)
  } // end of property Announcement::Content
  .property instance valuetype [System.Runtime]System.DateTime
          DatePosted()
  {
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.Announcement::get_DatePosted()
    .set instance void SkoolComm.Domain.Models.Announcement::set_DatePosted(valuetype [System.Runtime]System.DateTime)
  } // end of property Announcement::DatePosted
  .property instance string TargetAudience()
  {
    .get instance string SkoolComm.Domain.Models.Announcement::get_TargetAudience()
    .set instance void SkoolComm.Domain.Models.Announcement::set_TargetAudience(string)
  } // end of property Announcement::TargetAudience
} // end of class SkoolComm.Domain.Models.Announcement

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.AttendanceEntry
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private int32 '<LearnerId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Status>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.AttendanceEntry::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceEntry::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.AttendanceEntry::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceEntry::set_LearnerId

  .method public hidebysig specialname instance string 
          get_Status() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.AttendanceEntry::'<Status>k__BackingField'
    IL_0006:  ret
  } // end of method AttendanceEntry::get_Status

  .method public hidebysig specialname instance void 
          set_Status(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.AttendanceEntry::'<Status>k__BackingField'
    IL_0007:  ret
  } // end of method AttendanceEntry::set_Status

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.AttendanceEntry::'<Status>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  nop
    IL_0012:  ret
  } // end of method AttendanceEntry::.ctor

  .property instance int32 LearnerId()
  {
    .get instance int32 SkoolComm.Domain.Models.AttendanceEntry::get_LearnerId()
    .set instance void SkoolComm.Domain.Models.AttendanceEntry::set_LearnerId(int32)
  } // end of property AttendanceEntry::LearnerId
  .property instance string Status()
  {
    .get instance string SkoolComm.Domain.Models.AttendanceEntry::get_Status()
    .set instance void SkoolComm.Domain.Models.AttendanceEntry::set_Status(string)
  } // end of property AttendanceEntry::Status
} // end of class SkoolComm.Domain.Models.AttendanceEntry

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.AuthResult
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private bool '<Success>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Message>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<AccessToken>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<int32> '<StaffId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Email>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Role>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_Success() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool SkoolComm.Domain.Models.AuthResult::'<Success>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_Success

  .method public hidebysig specialname instance void 
          set_Success(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool SkoolComm.Domain.Models.AuthResult::'<Success>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_Success

  .method public hidebysig specialname instance string 
          get_Message() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.AuthResult::'<Message>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_Message

  .method public hidebysig specialname instance void 
          set_Message(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.AuthResult::'<Message>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_Message

  .method public hidebysig specialname instance string 
          get_AccessToken() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.AuthResult::'<AccessToken>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_AccessToken

  .method public hidebysig specialname instance void 
          set_AccessToken(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.AuthResult::'<AccessToken>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_AccessToken

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<int32> 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> SkoolComm.Domain.Models.AuthResult::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(valuetype [System.Runtime]System.Nullable`1<int32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> SkoolComm.Domain.Models.AuthResult::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_StaffId

  .method public hidebysig specialname instance string 
          get_Email() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.AuthResult::'<Email>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_Email

  .method public hidebysig specialname instance void 
          set_Email(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.AuthResult::'<Email>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_Email

  .method public hidebysig specialname instance string 
          get_Role() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.AuthResult::'<Role>k__BackingField'
    IL_0006:  ret
  } // end of method AuthResult::get_Role

  .method public hidebysig specialname instance void 
          set_Role(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.AuthResult::'<Role>k__BackingField'
    IL_0007:  ret
  } // end of method AuthResult::set_Role

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method AuthResult::.ctor

  .property instance bool Success()
  {
    .get instance bool SkoolComm.Domain.Models.AuthResult::get_Success()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_Success(bool)
  } // end of property AuthResult::Success
  .property instance string Message()
  {
    .get instance string SkoolComm.Domain.Models.AuthResult::get_Message()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_Message(string)
  } // end of property AuthResult::Message
  .property instance string AccessToken()
  {
    .get instance string SkoolComm.Domain.Models.AuthResult::get_AccessToken()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_AccessToken(string)
  } // end of property AuthResult::AccessToken
  .property instance valuetype [System.Runtime]System.Nullable`1<int32>
          StaffId()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<int32> SkoolComm.Domain.Models.AuthResult::get_StaffId()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_StaffId(valuetype [System.Runtime]System.Nullable`1<int32>)
  } // end of property AuthResult::StaffId
  .property instance string Email()
  {
    .get instance string SkoolComm.Domain.Models.AuthResult::get_Email()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_Email(string)
  } // end of property AuthResult::Email
  .property instance string Role()
  {
    .get instance string SkoolComm.Domain.Models.AuthResult::get_Role()
    .set instance void SkoolComm.Domain.Models.AuthResult::set_Role(string)
  } // end of property AuthResult::Role
} // end of class SkoolComm.Domain.Models.AuthResult

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.BehaviourEntry
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
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
  .field private string '<IssuedByInitials>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_PointId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<PointId>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_PointId

  .method public hidebysig specialname instance void 
          set_PointId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<PointId>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_PointId

  .method public hidebysig specialname instance int32 
          get_LearnerId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_LearnerId

  .method public hidebysig specialname instance int32 
          get_IssuedBy() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<IssuedBy>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_IssuedBy

  .method public hidebysig specialname instance void 
          set_IssuedBy(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<IssuedBy>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_IssuedBy

  .method public hidebysig specialname instance string 
          get_OffenceCode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceCode>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_OffenceCode

  .method public hidebysig specialname instance void 
          set_OffenceCode(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceCode>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_OffenceCode

  .method public hidebysig specialname instance int32 
          get_Level() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<Level>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_Level

  .method public hidebysig specialname instance void 
          set_Level(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<Level>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_Level

  .method public hidebysig specialname instance string 
          get_OffenceName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceName>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_OffenceName

  .method public hidebysig specialname instance void 
          set_OffenceName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceName>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_OffenceName

  .method public hidebysig specialname instance int32 
          get_Points() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<Points>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_Points

  .method public hidebysig specialname instance void 
          set_Points(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.BehaviourEntry::'<Points>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_Points

  .method public hidebysig specialname instance string 
          get_Reason() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.BehaviourEntry::'<Reason>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_Reason

  .method public hidebysig specialname instance void 
          set_Reason(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<Reason>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_Reason

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_DateRecorded() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.BehaviourEntry::'<DateRecorded>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_DateRecorded

  .method public hidebysig specialname instance void 
          set_DateRecorded(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.BehaviourEntry::'<DateRecorded>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_DateRecorded

  .method public hidebysig specialname instance string 
          get_IssuedByInitials() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.BehaviourEntry::'<IssuedByInitials>k__BackingField'
    IL_0006:  ret
  } // end of method BehaviourEntry::get_IssuedByInitials

  .method public hidebysig specialname instance void 
          set_IssuedByInitials(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<IssuedByInitials>k__BackingField'
    IL_0007:  ret
  } // end of method BehaviourEntry::set_IssuedByInitials

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceCode>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<OffenceName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Domain.Models.BehaviourEntry::'<IssuedByInitials>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0027:  nop
    IL_0028:  ret
  } // end of method BehaviourEntry::.ctor

  .property instance int32 PointId()
  {
    .get instance int32 SkoolComm.Domain.Models.BehaviourEntry::get_PointId()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_PointId(int32)
  } // end of property BehaviourEntry::PointId
  .property instance int32 LearnerId()
  {
    .get instance int32 SkoolComm.Domain.Models.BehaviourEntry::get_LearnerId()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_LearnerId(int32)
  } // end of property BehaviourEntry::LearnerId
  .property instance int32 IssuedBy()
  {
    .get instance int32 SkoolComm.Domain.Models.BehaviourEntry::get_IssuedBy()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_IssuedBy(int32)
  } // end of property BehaviourEntry::IssuedBy
  .property instance string OffenceCode()
  {
    .get instance string SkoolComm.Domain.Models.BehaviourEntry::get_OffenceCode()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_OffenceCode(string)
  } // end of property BehaviourEntry::OffenceCode
  .property instance int32 Level()
  {
    .get instance int32 SkoolComm.Domain.Models.BehaviourEntry::get_Level()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_Level(int32)
  } // end of property BehaviourEntry::Level
  .property instance string OffenceName()
  {
    .get instance string SkoolComm.Domain.Models.BehaviourEntry::get_OffenceName()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_OffenceName(string)
  } // end of property BehaviourEntry::OffenceName
  .property instance int32 Points()
  {
    .get instance int32 SkoolComm.Domain.Models.BehaviourEntry::get_Points()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_Points(int32)
  } // end of property BehaviourEntry::Points
  .property instance string Reason()
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    .get instance string SkoolComm.Domain.Models.BehaviourEntry::get_Reason()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_Reason(string)
  } // end of property BehaviourEntry::Reason
  .property instance valuetype [System.Runtime]System.DateTime
          DateRecorded()
  {
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.BehaviourEntry::get_DateRecorded()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_DateRecorded(valuetype [System.Runtime]System.DateTime)
  } // end of property BehaviourEntry::DateRecorded
  .property instance string IssuedByInitials()
  {
    .get instance string SkoolComm.Domain.Models.BehaviourEntry::get_IssuedByInitials()
    .set instance void SkoolComm.Domain.Models.BehaviourEntry::set_IssuedByInitials(string)
  } // end of property BehaviourEntry::IssuedByInitials
} // end of class SkoolComm.Domain.Models.BehaviourEntry

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.CalendarItem
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private string '<Kind>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Id>k__BackingField'
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
  .field private string '<Location>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_Kind() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.CalendarItem::'<Kind>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_Kind

  .method public hidebysig specialname instance void 
          set_Kind(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Kind>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_Kind

  .method public hidebysig specialname instance int32 
          get_Id() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.CalendarItem::'<Id>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_Id

  .method public hidebysig specialname instance void 
          set_Id(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.CalendarItem::'<Id>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_Id

  .method public hidebysig specialname instance int32 
          get_StaffId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.CalendarItem::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.CalendarItem::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_StaffId

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.CalendarItem::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_Title

  .method public hidebysig specialname instance string 
          get_Description() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.CalendarItem::'<Description>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_Description

  .method public hidebysig specialname instance void 
          set_Description(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Description>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_Description

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_StartDate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::'<StartDate>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_StartDate

  .method public hidebysig specialname instance void 
          set_StartDate(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::'<StartDate>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_StartDate

  .method public hidebysig specialname instance valuetype [System.Runtime]System.DateTime 
          get_EndDate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::'<EndDate>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_EndDate

  .method public hidebysig specialname instance void 
          set_EndDate(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::'<EndDate>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_EndDate

  .method public hidebysig specialname instance string 
          get_Location() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.CalendarItem::'<Location>k__BackingField'
    IL_0006:  ret
  } // end of method CalendarItem::get_Location

  .method public hidebysig specialname instance void 
          set_Location(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Location>k__BackingField'
    IL_0007:  ret
  } // end of method CalendarItem::set_Location

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "event"
    IL_0006:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Kind>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Title>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Description>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldstr      ""
    IL_0027:  stfld      string SkoolComm.Domain.Models.CalendarItem::'<Location>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0032:  nop
    IL_0033:  ret
  } // end of method CalendarItem::.ctor

  .property instance string Kind()
  {
    .get instance string SkoolComm.Domain.Models.CalendarItem::get_Kind()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_Kind(string)
  } // end of property CalendarItem::Kind
  .property instance int32 Id()
  {
    .get instance int32 SkoolComm.Domain.Models.CalendarItem::get_Id()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_Id(int32)
  } // end of property CalendarItem::Id
  .property instance int32 StaffId()
  {
    .get instance int32 SkoolComm.Domain.Models.CalendarItem::get_StaffId()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_StaffId(int32)
  } // end of property CalendarItem::StaffId
  .property instance string Title()
  {
    .get instance string SkoolComm.Domain.Models.CalendarItem::get_Title()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_Title(string)
  } // end of property CalendarItem::Title
  .property instance string Description()
  {
    .get instance string SkoolComm.Domain.Models.CalendarItem::get_Description()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_Description(string)
  } // end of property CalendarItem::Description
  .property instance valuetype [System.Runtime]System.DateTime
          StartDate()
  {
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::get_StartDate()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_StartDate(valuetype [System.Runtime]System.DateTime)
  } // end of property CalendarItem::StartDate
  .property instance valuetype [System.Runtime]System.DateTime
          EndDate()
  {
    .get instance valuetype [System.Runtime]System.DateTime SkoolComm.Domain.Models.CalendarItem::get_EndDate()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_EndDate(valuetype [System.Runtime]System.DateTime)
  } // end of property CalendarItem::EndDate
  .property instance string Location()
  {
    .get instance string SkoolComm.Domain.Models.CalendarItem::get_Location()
    .set instance void SkoolComm.Domain.Models.CalendarItem::set_Location(string)
  } // end of property CalendarItem::Location
} // end of class SkoolComm.Domain.Models.CalendarItem

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.LearnerSummary
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
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
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.LearnerSummary::'<LearnerId>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerSummary::get_LearnerId

  .method public hidebysig specialname instance void 
          set_LearnerId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.LearnerSummary::'<LearnerId>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerSummary::set_LearnerId

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.LearnerSummary::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerSummary::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerSummary::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.LearnerSummary::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerSummary::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerSummary::set_LastName

  .method public hidebysig specialname instance string 
          get_Grade() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.LearnerSummary::'<Grade>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerSummary::get_Grade

  .method public hidebysig specialname instance void 
          set_Grade(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<Grade>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerSummary::set_Grade

  .method public hidebysig specialname instance string 
          get_Class() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.LearnerSummary::'<Class>k__BackingField'
    IL_0006:  ret
  } // end of method LearnerSummary::get_Class

  .method public hidebysig specialname instance void 
          set_Class(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<Class>k__BackingField'
    IL_0007:  ret
  } // end of method LearnerSummary::set_Class

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<FirstName>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<LastName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<Grade>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldstr      ""
    IL_0027:  stfld      string SkoolComm.Domain.Models.LearnerSummary::'<Class>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0032:  nop
    IL_0033:  ret
  } // end of method LearnerSummary::.ctor

  .property instance int32 LearnerId()
  {
    .get instance int32 SkoolComm.Domain.Models.LearnerSummary::get_LearnerId()
    .set instance void SkoolComm.Domain.Models.LearnerSummary::set_LearnerId(int32)
  } // end of property LearnerSummary::LearnerId
  .property instance string FirstName()
  {
    .get instance string SkoolComm.Domain.Models.LearnerSummary::get_FirstName()
    .set instance void SkoolComm.Domain.Models.LearnerSummary::set_FirstName(string)
  } // end of property LearnerSummary::FirstName
  .property instance string LastName()
  {
    .get instance string SkoolComm.Domain.Models.LearnerSummary::get_LastName()
    .set instance void SkoolComm.Domain.Models.LearnerSummary::set_LastName(string)
  } // end of property LearnerSummary::LastName
  .property instance string Grade()
  {
    .get instance string SkoolComm.Domain.Models.LearnerSummary::get_Grade()
    .set instance void SkoolComm.Domain.Models.LearnerSummary::set_Grade(string)
  } // end of property LearnerSummary::Grade
  .property instance string Class()
  {
    .get instance string SkoolComm.Domain.Models.LearnerSummary::get_Class()
    .set instance void SkoolComm.Domain.Models.LearnerSummary::set_Class(string)
  } // end of property LearnerSummary::Class
} // end of class SkoolComm.Domain.Models.LearnerSummary

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.Offence
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private string '<Code>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Description>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Level>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Points>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_Code() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.Offence::'<Code>k__BackingField'
    IL_0006:  ret
  } // end of method Offence::get_Code

  .method public hidebysig specialname instance void 
          set_Code(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.Offence::'<Code>k__BackingField'
    IL_0007:  ret
  } // end of method Offence::set_Code

  .method public hidebysig specialname instance string 
          get_Description() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.Offence::'<Description>k__BackingField'
    IL_0006:  ret
  } // end of method Offence::get_Description

  .method public hidebysig specialname instance void 
          set_Description(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.Offence::'<Description>k__BackingField'
    IL_0007:  ret
  } // end of method Offence::set_Description

  .method public hidebysig specialname instance int32 
          get_Level() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.Offence::'<Level>k__BackingField'
    IL_0006:  ret
  } // end of method Offence::get_Level

  .method public hidebysig specialname instance void 
          set_Level(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.Offence::'<Level>k__BackingField'
    IL_0007:  ret
  } // end of method Offence::set_Level

  .method public hidebysig specialname instance int32 
          get_Points() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.Offence::'<Points>k__BackingField'
    IL_0006:  ret
  } // end of method Offence::get_Points

  .method public hidebysig specialname instance void 
          set_Points(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.Offence::'<Points>k__BackingField'
    IL_0007:  ret
  } // end of method Offence::set_Points

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.Offence::'<Code>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.Offence::'<Description>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  nop
    IL_001d:  ret
  } // end of method Offence::.ctor

  .property instance string Code()
  {
    .get instance string SkoolComm.Domain.Models.Offence::get_Code()
    .set instance void SkoolComm.Domain.Models.Offence::set_Code(string)
  } // end of property Offence::Code
  .property instance string Description()
  {
    .get instance string SkoolComm.Domain.Models.Offence::get_Description()
    .set instance void SkoolComm.Domain.Models.Offence::set_Description(string)
  } // end of property Offence::Description
  .property instance int32 Level()
  {
    .get instance int32 SkoolComm.Domain.Models.Offence::get_Level()
    .set instance void SkoolComm.Domain.Models.Offence::set_Level(int32)
  } // end of property Offence::Level
  .property instance int32 Points()
  {
    .get instance int32 SkoolComm.Domain.Models.Offence::get_Points()
    .set instance void SkoolComm.Domain.Models.Offence::set_Points(int32)
  } // end of property Offence::Points
} // end of class SkoolComm.Domain.Models.Offence

.class public abstract auto ansi sealed beforefieldinit SkoolComm.Domain.Models.OffenceCatalog
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string code
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

    .method assembly hidebysig instance bool 
            '<Find>b__0'(class SkoolComm.Domain.Models.Offence o) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
      // Code size       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string SkoolComm.Domain.Models.Offence::get_Code()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass2_0'::code
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Find>b__0'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.ValueType
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> list
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 00 01 00 00 ) 
  } // end of class '<>c__DisplayClass3_0'

  .field public static initonly class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>> Levels
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.TupleElementNamesAttribute::.ctor(string[]) = ( 01 00 02 00 00 00 04 4E 61 6D 65 06 50 6F 69 6E   // .......Name.Poin
                                                                                                                        74 73 00 00 )                                     // ts..
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 03 00 00 00 01 00 01 00 00 ) 
  .field public static initonly class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> All
  .method public hidebysig static class SkoolComm.Domain.Models.Offence 
          Find(string code) cil managed
  {
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       36 (0x24)
    .maxstack  3
    .locals init (class SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass2_0' V_0)
    IL_0000:  newobj     instance void SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass2_0'::code
    IL_000d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog::All
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass2_0'::'<Find>b__0'(class SkoolComm.Domain.Models.Offence)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<class SkoolComm.Domain.Models.Offence,bool>::.ctor(object,
                                                                                                                              native int)
    IL_001e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class SkoolComm.Domain.Models.Offence>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0023:  ret
  } // end of method OffenceCatalog::Find

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> 
          Build() cil managed
  {
    // Code size       785 (0x311)
    .maxstack  4
    .locals init (valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0' V_0,
             class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> V_1)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence>::.ctor()
    IL_0008:  stfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'::list
    IL_000d:  nop
    IL_000e:  ldc.i4.1
    IL_000f:  ldstr      "101"
    IL_0014:  ldstr      "Failing to attend class on time"
    IL_0019:  ldloca.s   V_0
    IL_001b:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0020:  nop
    IL_0021:  ldc.i4.1
    IL_0022:  ldstr      "102"
    IL_0027:  ldstr      "Leaving class without permission"
    IL_002c:  ldloca.s   V_0
    IL_002e:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0033:  nop
    IL_0034:  ldc.i4.1
    IL_0035:  ldstr      "103"
    IL_003a:  ldstr      "Cheating in class test"
    IL_003f:  ldloca.s   V_0
    IL_0041:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0046:  nop
    IL_0047:  ldc.i4.1
    IL_0048:  ldstr      "104"
    IL_004d:  ldstr      "Failing to complete homework"
    IL_0052:  ldloca.s   V_0
    IL_0054:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0059:  nop
    IL_005a:  ldc.i4.1
    IL_005b:  ldstr      "105"
    IL_0060:  ldstr      "Dishonesty with minor consequences"
    IL_0065:  ldloca.s   V_0
    IL_0067:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_006c:  nop
    IL_006d:  ldc.i4.1
    IL_006e:  ldstr      "106"
    IL_0073:  ldstr      "Books at home"
    IL_0078:  ldloca.s   V_0
    IL_007a:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_007f:  nop
    IL_0080:  ldc.i4.1
    IL_0081:  ldstr      "107"
    IL_0086:  ldstr      "Disrupting class discipline"
    IL_008b:  ldloca.s   V_0
    IL_008d:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0092:  nop
    IL_0093:  ldc.i4.2
    IL_0094:  ldstr      "201"
    IL_0099:  ldstr      "Frequent repetition of Level 1 infringement"
    IL_009e:  ldloca.s   V_0
    IL_00a0:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_00a5:  nop
    IL_00a6:  ldc.i4.2
    IL_00a7:  ldstr      "202"
    IL_00ac:  ldstr      "Possession or use of tobacco"
    IL_00b1:  ldloca.s   V_0
    IL_00b3:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_00b8:  nop
    IL_00b9:  ldc.i4.2
    IL_00ba:  ldstr      "203"
    IL_00bf:  ldstr      "Bunking classes"
    IL_00c4:  ldloca.s   V_0
    IL_00c6:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_00cb:  nop
    IL_00cc:  ldc.i4.2
    IL_00cd:  ldstr      "204"
    IL_00d2:  ldstr      "Cheating/copying during examinations, tests, homew"
    + "ork"
    IL_00d7:  ldloca.s   V_0
    IL_00d9:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_00de:  nop
    IL_00df:  ldc.i4.2
    IL_00e0:  ldstr      "205"
    IL_00e5:  ldstr      "Verbally threatening safety of another learner"
    IL_00ea:  ldloca.s   V_0
    IL_00ec:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_00f1:  nop
    IL_00f2:  ldc.i4.2
    IL_00f3:  ldstr      "206"
    IL_00f8:  ldstr      "Extremely disruptive behaviour (vandalism / breaki"
    + "ng)"
    IL_00fd:  ldloca.s   V_0
    IL_00ff:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0104:  nop
    IL_0105:  ldc.i4.2
    IL_0106:  ldstr      "207"
    IL_010b:  ldstr      "Possession or use of matches"
    IL_0110:  ldloca.s   V_0
    IL_0112:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0117:  nop
    IL_0118:  ldc.i4.2
    IL_0119:  ldstr      "208"
    IL_011e:  ldstr      "Learner's cell phone visible"
    IL_0123:  ldloca.s   V_0
    IL_0125:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_012a:  nop
    IL_012b:  ldc.i4.2
    IL_012c:  ldstr      "211"
    IL_0131:  ldstr      "Wearing incorrect uniform"
    IL_0136:  ldloca.s   V_0
    IL_0138:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_013d:  nop
    IL_013e:  ldc.i4.2
    IL_013f:  ldstr      "220"
    IL_0144:  ldstr      "Back-chatting a teacher"
    IL_0149:  ldloca.s   V_0
    IL_014b:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0150:  nop
    IL_0151:  ldc.i4.3
    IL_0152:  ldstr      "301"
    IL_0157:  ldstr      "Frequent repetition of Level 2 infringement"
    IL_015c:  ldloca.s   V_0
    IL_015e:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0163:  nop
    IL_0164:  ldc.i4.3
    IL_0165:  ldstr      "302"
    IL_016a:  ldstr      "Injury to another person / (minor bullying)"
    IL_016f:  ldloca.s   V_0
    IL_0171:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0176:  nop
    IL_0177:  ldc.i4.3
    IL_0178:  ldstr      "303"
    IL_017d:  ldstr      "Possession or use of alcoholic / narcotic substance"
    IL_0182:  ldloca.s   V_0
    IL_0184:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0189:  nop
    IL_018a:  ldc.i4.3
    IL_018b:  ldstr      "304"
    IL_0190:  ldstr      bytearray (53 00 65 00 76 00 65 00 72 00 65 00 6C 00 79 00   // S.e.v.e.r.e.l.y.
                                    20 00 64 00 69 00 73 00 72 00 75 00 70 00 74 00   //  .d.i.s.r.u.p.t.
                                    69 00 76 00 65 00 20 00 62 00 65 00 68 00 61 00   // i.v.e. .b.e.h.a.
                                    76 00 69 00 6F 00 75 00 72 00 20 00 13 20 20 00   // v.i.o.u.r. ..  .
                                    69 00 6E 00 64 00 65 00 63 00 65 00 6E 00 74 00   // i.n.d.e.c.e.n.t.
                                    20 00 28 00 6B 00 69 00 73 00 73 00 69 00 6E 00   //  .(.k.i.s.s.i.n.
                                    67 00 20 00 2F 00 20 00 74 00 6F 00 75 00 63 00   // g. ./. .t.o.u.c.
                                    68 00 69 00 6E 00 67 00 29 00 )                   // h.i.n.g.).
    IL_0195:  ldloca.s   V_0
    IL_0197:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_019c:  nop
    IL_019d:  ldc.i4.3
    IL_019e:  ldstr      "305"
    IL_01a3:  ldstr      "Possession of a dangerous weapon/s"
    IL_01a8:  ldloca.s   V_0
    IL_01aa:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_01af:  nop
    IL_01b0:  ldc.i4.3
    IL_01b1:  ldstr      "306"
    IL_01b6:  ldstr      "Theft"
    IL_01bb:  ldloca.s   V_0
    IL_01bd:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_01c2:  nop
    IL_01c3:  ldc.i4.3
    IL_01c4:  ldstr      "307"
    IL_01c9:  ldstr      "Gambling"
    IL_01ce:  ldloca.s   V_0
    IL_01d0:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_01d5:  nop
    IL_01d6:  ldc.i4.3
    IL_01d7:  ldstr      "308"
    IL_01dc:  ldstr      "Disrespect towards educator"
    IL_01e1:  ldloca.s   V_0
    IL_01e3:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_01e8:  nop
    IL_01e9:  ldc.i4.4
    IL_01ea:  ldstr      "401"
    IL_01ef:  ldstr      "Frequent repetition of Level 2 or 3 infringement"
    IL_01f4:  ldloca.s   V_0
    IL_01f6:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_01fb:  nop
    IL_01fc:  ldc.i4.4
    IL_01fd:  ldstr      "402"
    IL_0202:  ldstr      "Threatening with a dangerous weapon"
    IL_0207:  ldloca.s   V_0
    IL_0209:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_020e:  nop
    IL_020f:  ldc.i4.4
    IL_0210:  ldstr      "403"
    IL_0215:  ldstr      "Selling drugs"
    IL_021a:  ldloca.s   V_0
    IL_021c:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0221:  nop
    IL_0222:  ldc.i4.4
    IL_0223:  ldstr      "404"
    IL_0228:  ldstr      bytearray (53 00 65 00 78 00 75 00 61 00 6C 00 20 00 6D 00   // S.e.x.u.a.l. .m.
                                    69 00 73 00 63 00 6F 00 6E 00 64 00 75 00 63 00   // i.s.c.o.n.d.u.c.
                                    74 00 20 00 13 20 20 00 70 00 6F 00 73 00 73 00   // t. ..  .p.o.s.s.
                                    65 00 73 00 73 00 69 00 6F 00 6E 00 2F 00 64 00   // e.s.s.i.o.n./.d.
                                    72 00 61 00 77 00 69 00 6E 00 67 00 20 00 6F 00   // r.a.w.i.n.g. .o.
                                    66 00 20 00 70 00 6F 00 72 00 6E 00 6F 00 67 00   // f. .p.o.r.n.o.g.
                                    72 00 61 00 70 00 68 00 79 00 )                   // r.a.p.h.y.
    IL_022d:  ldloca.s   V_0
    IL_022f:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0234:  nop
    IL_0235:  ldc.i4.4
    IL_0236:  ldstr      "405"
    IL_023b:  ldstr      "Starting a fire"
    IL_0240:  ldloca.s   V_0
    IL_0242:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0247:  nop
    IL_0248:  ldc.i4.4
    IL_0249:  ldstr      "406"
    IL_024e:  ldstr      "Bunking detention"
    IL_0253:  ldloca.s   V_0
    IL_0255:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_025a:  nop
    IL_025b:  ldc.i4.5
    IL_025c:  ldstr      "501"
    IL_0261:  ldstr      "Frequent repetition of Level 4 infringement"
    IL_0266:  ldloca.s   V_0
    IL_0268:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_026d:  nop
    IL_026e:  ldc.i4.5
    IL_026f:  ldstr      "502"
    IL_0274:  ldstr      "Possession and peddling with narcotic substances"
    IL_0279:  ldloca.s   V_0
    IL_027b:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0280:  nop
    IL_0281:  ldc.i4.5
    IL_0282:  ldstr      "503"
    IL_0287:  ldstr      "Assault / fighting"
    IL_028c:  ldloca.s   V_0
    IL_028e:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0293:  nop
    IL_0294:  ldc.i4.5
    IL_0295:  ldstr      "504"
    IL_029a:  ldstr      "Sexual harassment, abuse or rape"
    IL_029f:  ldloca.s   V_0
    IL_02a1:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_02a6:  nop
    IL_02a7:  ldc.i4.5
    IL_02a8:  ldstr      "505"
    IL_02ad:  ldstr      "Robbery or major theft"
    IL_02b2:  ldloca.s   V_0
    IL_02b4:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_02b9:  nop
    IL_02ba:  ldc.i4.5
    IL_02bb:  ldstr      "506"
    IL_02c0:  ldstr      "Intentionally using a dangerous weapon"
    IL_02c5:  ldloca.s   V_0
    IL_02c7:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_02cc:  nop
    IL_02cd:  ldc.i4.5
    IL_02ce:  ldstr      "507"
    IL_02d3:  ldstr      "First suspension (remedial)"
    IL_02d8:  ldloca.s   V_0
    IL_02da:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_02df:  nop
    IL_02e0:  ldc.i4.5
    IL_02e1:  ldstr      "508"
    IL_02e6:  ldstr      "Second suspension (punishment)"
    IL_02eb:  ldloca.s   V_0
    IL_02ed:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_02f2:  nop
    IL_02f3:  ldc.i4.5
    IL_02f4:  ldstr      "509"
    IL_02f9:  ldstr      "Severe bullying"
    IL_02fe:  ldloca.s   V_0
    IL_0300:  call       void SkoolComm.Domain.Models.OffenceCatalog::'<Build>g__Add|3_0'(int32,
                                                                                          string,
                                                                                          string,
                                                                                          valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'&)
    IL_0305:  nop
    IL_0306:  ldloc.0
    IL_0307:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'::list
    IL_030c:  stloc.1
    IL_030d:  br.s       IL_030f

    IL_030f:  ldloc.1
    IL_0310:  ret
  } // end of method OffenceCatalog::Build

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       120 (0x78)
    .maxstack  5
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::.ctor()
    IL_0005:  dup
    IL_0006:  ldc.i4.1
    IL_0007:  ldstr      "Enforcing reprimands"
    IL_000c:  ldc.i4.5
    IL_000d:  newobj     instance void valuetype [System.Runtime]System.ValueTuple`2<string,int32>::.ctor(!0,
                                                                                                          !1)
    IL_0012:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::set_Item(!0,
                                                                                                                                                                                      !1)
    IL_0017:  nop
    IL_0018:  dup
    IL_0019:  ldc.i4.2
    IL_001a:  ldstr      "Infringement (caution)"
    IL_001f:  ldc.i4.s   10
    IL_0021:  newobj     instance void valuetype [System.Runtime]System.ValueTuple`2<string,int32>::.ctor(!0,
                                                                                                          !1)
    IL_0026:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::set_Item(!0,
                                                                                                                                                                                      !1)
    IL_002b:  nop
    IL_002c:  dup
    IL_002d:  ldc.i4.3
    IL_002e:  ldstr      "Serious offences"
    IL_0033:  ldc.i4.s   20
    IL_0035:  newobj     instance void valuetype [System.Runtime]System.ValueTuple`2<string,int32>::.ctor(!0,
                                                                                                          !1)
    IL_003a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::set_Item(!0,
                                                                                                                                                                                      !1)
    IL_003f:  nop
    IL_0040:  dup
    IL_0041:  ldc.i4.4
    IL_0042:  ldstr      "Very serious offences"
    IL_0047:  ldc.i4.s   30
    IL_0049:  newobj     instance void valuetype [System.Runtime]System.ValueTuple`2<string,int32>::.ctor(!0,
                                                                                                          !1)
    IL_004e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::set_Item(!0,
                                                                                                                                                                                      !1)
    IL_0053:  nop
    IL_0054:  dup
    IL_0055:  ldc.i4.5
    IL_0056:  ldstr      "Criminal / serious violations (SGB & Department)"
    IL_005b:  ldc.i4.s   50
    IL_005d:  newobj     instance void valuetype [System.Runtime]System.ValueTuple`2<string,int32>::.ctor(!0,
                                                                                                          !1)
    IL_0062:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::set_Item(!0,
                                                                                                                                                                                      !1)
    IL_0067:  nop
    IL_0068:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>> SkoolComm.Domain.Models.OffenceCatalog::Levels
    IL_006d:  call       class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog::Build()
    IL_0072:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog::All
    IL_0077:  ret
  } // end of method OffenceCatalog::.cctor

  .method assembly hidebysig static void 
          '<Build>g__Add|3_0'(int32 level,
                              string code,
                              string description,
                              valuetype SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'& A_3) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       65 (0x41)
    .maxstack  5
    IL_0000:  ldarg.3
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence> SkoolComm.Domain.Models.OffenceCatalog/'<>c__DisplayClass3_0'::list
    IL_0006:  newobj     instance void SkoolComm.Domain.Models.Offence::.ctor()
    IL_000b:  dup
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance void SkoolComm.Domain.Models.Offence::set_Code(string)
    IL_0012:  nop
    IL_0013:  dup
    IL_0014:  ldarg.2
    IL_0015:  callvirt   instance void SkoolComm.Domain.Models.Offence::set_Description(string)
    IL_001a:  nop
    IL_001b:  dup
    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance void SkoolComm.Domain.Models.Offence::set_Level(int32)
    IL_0022:  nop
    IL_0023:  dup
    IL_0024:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>> SkoolComm.Domain.Models.OffenceCatalog::Levels
    IL_0029:  ldarg.0
    IL_002a:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.ValueTuple`2<string,int32>>::get_Item(!0)
    IL_002f:  ldfld      !1 valuetype [System.Runtime]System.ValueTuple`2<string,int32>::Item2
    IL_0034:  callvirt   instance void SkoolComm.Domain.Models.Offence::set_Points(int32)
    IL_0039:  nop
    IL_003a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Offence>::Add(!0)
    IL_003f:  nop
    IL_0040:  ret
  } // end of method OffenceCatalog::'<Build>g__Add|3_0'

} // end of class SkoolComm.Domain.Models.OffenceCatalog

.class public auto ansi beforefieldinit SkoolComm.Domain.Models.StaffProfile
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private int32 '<StaffId>k__BackingField'
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
  .field private string '<Role>k__BackingField'
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
    IL_0001:  ldfld      int32 SkoolComm.Domain.Models.StaffProfile::'<StaffId>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_StaffId

  .method public hidebysig specialname instance void 
          set_StaffId(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Models.StaffProfile::'<StaffId>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_StaffId

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.StaffProfile::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.StaffProfile::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_LastName

  .method public hidebysig specialname instance string 
          get_Email() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.StaffProfile::'<Email>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_Email

  .method public hidebysig specialname instance void 
          set_Email(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Email>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_Email

  .method public hidebysig specialname instance string 
          get_Role() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.StaffProfile::'<Role>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_Role

  .method public hidebysig specialname instance void 
          set_Role(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Role>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_Role

  .method public hidebysig specialname instance string 
          get_Status() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Models.StaffProfile::'<Status>k__BackingField'
    IL_0006:  ret
  } // end of method StaffProfile::get_Status

  .method public hidebysig specialname instance void 
          set_Status(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Status>k__BackingField'
    IL_0007:  ret
  } // end of method StaffProfile::set_Status

  .method public hidebysig specialname instance string 
          get_FullName() cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance string SkoolComm.Domain.Models.StaffProfile::get_FirstName()
    IL_0006:  ldstr      " "
    IL_000b:  ldarg.0
    IL_000c:  call       instance string SkoolComm.Domain.Models.StaffProfile::get_LastName()
    IL_0011:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0016:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_001b:  ret
  } // end of method StaffProfile::get_FullName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<FirstName>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<LastName>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  ldstr      ""
    IL_001c:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Email>k__BackingField'
    IL_0021:  ldarg.0
    IL_0022:  ldstr      ""
    IL_0027:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Role>k__BackingField'
    IL_002c:  ldarg.0
    IL_002d:  ldstr      ""
    IL_0032:  stfld      string SkoolComm.Domain.Models.StaffProfile::'<Status>k__BackingField'
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_003d:  nop
    IL_003e:  ret
  } // end of method StaffProfile::.ctor

  .property instance int32 StaffId()
  {
    .get instance int32 SkoolComm.Domain.Models.StaffProfile::get_StaffId()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_StaffId(int32)
  } // end of property StaffProfile::StaffId
  .property instance string FirstName()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_FirstName()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_FirstName(string)
  } // end of property StaffProfile::FirstName
  .property instance string LastName()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_LastName()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_LastName(string)
  } // end of property StaffProfile::LastName
  .property instance string Email()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_Email()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_Email(string)
  } // end of property StaffProfile::Email
  .property instance string Role()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_Role()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_Role(string)
  } // end of property StaffProfile::Role
  .property instance string Status()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_Status()
    .set instance void SkoolComm.Domain.Models.StaffProfile::set_Status(string)
  } // end of property StaffProfile::Status
  .property instance string FullName()
  {
    .get instance string SkoolComm.Domain.Models.StaffProfile::get_FullName()
  } // end of property StaffProfile::FullName
} // end of class SkoolComm.Domain.Models.StaffProfile

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IAnnouncementService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.Announcement>> 
          GetAllAsync() cil managed
  {
  } // end of method IAnnouncementService::GetAllAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class SkoolComm.Domain.Models.Announcement announcement) cil managed
  {
  } // end of method IAnnouncementService::CreateAsync

} // end of class SkoolComm.Domain.Interfaces.IAnnouncementService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IAttendanceService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.LearnerSummary>> 
          GetLearnersAsync() cil managed
  {
  } // end of method IAttendanceService::GetLearnersAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.AttendanceEntry>> 
          GetByDateAsync(valuetype [System.Runtime]System.DateTime 'date') cil managed
  {
  } // end of method IAttendanceService::GetByDateAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          SaveAsync(valuetype [System.Runtime]System.DateTime 'date',
                    int32 recordedBy,
                    class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.AttendanceEntry> entries) cil managed
  {
  } // end of method IAttendanceService::SaveAsync

} // end of class SkoolComm.Domain.Interfaces.IAttendanceService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IAuthService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class SkoolComm.Domain.Models.AuthResult> 
          LoginAsync(string email,
                     string password) cil managed
  {
  } // end of method IAuthService::LoginAsync

} // end of class SkoolComm.Domain.Interfaces.IAuthService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IBehaviourService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.BehaviourEntry>> 
          GetAllAsync() cil managed
  {
  } // end of method IBehaviourService::GetAllAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class SkoolComm.Domain.Models.BehaviourEntry entry) cil managed
  {
  } // end of method IBehaviourService::CreateAsync

} // end of class SkoolComm.Domain.Interfaces.IBehaviourService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IEventService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.CalendarItem>> 
          GetAllAsync() cil managed
  {
  } // end of method IEventService::GetAllAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          CreateAsync(class SkoolComm.Domain.Models.CalendarItem item) cil managed
  {
  } // end of method IEventService::CreateAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class SkoolComm.Domain.Models.CalendarItem item) cil managed
  {
  } // end of method IEventService::UpdateAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(string kind,
                      int32 id) cil managed
  {
  } // end of method IEventService::DeleteAsync

} // end of class SkoolComm.Domain.Interfaces.IEventService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IStaffService
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class SkoolComm.Domain.Models.StaffProfile> 
          GetByIdAsync(int32 staffId) cil managed
  {
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
  } // end of method IStaffService::GetByIdAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Models.StaffProfile>> 
          GetAllAsync() cil managed
  {
  } // end of method IStaffService::GetAllAsync

} // end of class SkoolComm.Domain.Interfaces.IStaffService

.class interface public abstract auto ansi beforefieldinit SkoolComm.Domain.Interfaces.IStudentRepository
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class [System.Collections]System.Collections.Generic.List`1<class SkoolComm.Domain.Entities.Student>> 
          GetAllAsync() cil managed
  {
  } // end of method IStudentRepository::GetAllAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task`1<class SkoolComm.Domain.Entities.Student> 
          GetByIdAsync(int32 id) cil managed
  {
    .param [0]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 ) 
  } // end of method IStudentRepository::GetByIdAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          AddAsync(class SkoolComm.Domain.Entities.Student student) cil managed
  {
  } // end of method IStudentRepository::AddAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          UpdateAsync(class SkoolComm.Domain.Entities.Student student) cil managed
  {
  } // end of method IStudentRepository::UpdateAsync

  .method public hidebysig newslot abstract virtual 
          instance class [System.Runtime]System.Threading.Tasks.Task 
          DeleteAsync(int32 id) cil managed
  {
  } // end of method IStudentRepository::DeleteAsync

} // end of class SkoolComm.Domain.Interfaces.IStudentRepository

.class public auto ansi beforefieldinit SkoolComm.Domain.Entities.Parent
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private int32 '<Id>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Name>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<ContactInformation>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Id() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Entities.Parent::'<Id>k__BackingField'
    IL_0006:  ret
  } // end of method Parent::get_Id

  .method public hidebysig specialname instance void 
          set_Id(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Entities.Parent::'<Id>k__BackingField'
    IL_0007:  ret
  } // end of method Parent::set_Id

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Entities.Parent::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Parent::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Entities.Parent::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Parent::set_Name

  .method public hidebysig specialname instance string 
          get_ContactInformation() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Entities.Parent::'<ContactInformation>k__BackingField'
    IL_0006:  ret
  } // end of method Parent::get_ContactInformation

  .method public hidebysig specialname instance void 
          set_ContactInformation(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Entities.Parent::'<ContactInformation>k__BackingField'
    IL_0007:  ret
  } // end of method Parent::set_ContactInformation

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string SkoolComm.Domain.Entities.Parent::'<Name>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string SkoolComm.Domain.Entities.Parent::'<ContactInformation>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  nop
    IL_001d:  ret
  } // end of method Parent::.ctor

  .property instance int32 Id()
  {
    .get instance int32 SkoolComm.Domain.Entities.Parent::get_Id()
    .set instance void SkoolComm.Domain.Entities.Parent::set_Id(int32)
  } // end of property Parent::Id
  .property instance string Name()
  {
    .get instance string SkoolComm.Domain.Entities.Parent::get_Name()
    .set instance void SkoolComm.Domain.Entities.Parent::set_Name(string)
  } // end of property Parent::Name
  .property instance string ContactInformation()
  {
    .get instance string SkoolComm.Domain.Entities.Parent::get_ContactInformation()
    .set instance void SkoolComm.Domain.Entities.Parent::set_ContactInformation(string)
  } // end of property Parent::ContactInformation
} // end of class SkoolComm.Domain.Entities.Parent

.class public auto ansi beforefieldinit SkoolComm.Domain.Entities.Student
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private int32 '<Id>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Name>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Grade>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Id() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 SkoolComm.Domain.Entities.Student::'<Id>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Id

  .method public hidebysig specialname instance void 
          set_Id(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 SkoolComm.Domain.Entities.Student::'<Id>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Id

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Entities.Student::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Entities.Student::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Name

  .method public hidebysig specialname instance string 
          get_Grade() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string SkoolComm.Domain.Entities.Student::'<Grade>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Grade

  .method public hidebysig specialname instance void 
          set_Grade(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string SkoolComm.Domain.Entities.Student::'<Grade>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Grade

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string SkoolComm.Domain.Entities.Student::'<Name>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string SkoolComm.Domain.Entities.Student::'<Grade>k__BackingField'
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  nop
    IL_001d:  ret
  } // end of method Student::.ctor

  .property instance int32 Id()
  {
    .get instance int32 SkoolComm.Domain.Entities.Student::get_Id()
    .set instance void SkoolComm.Domain.Entities.Student::set_Id(int32)
  } // end of property Student::Id
  .property instance string Name()
  {
    .get instance string SkoolComm.Domain.Entities.Student::get_Name()
    .set instance void SkoolComm.Domain.Entities.Student::set_Name(string)
  } // end of property Student::Name
  .property instance string Grade()
  {
    .get instance string SkoolComm.Domain.Entities.Student::get_Grade()
    .set instance void SkoolComm.Domain.Entities.Student::set_Grade(string)
  } // end of property Student::Grade
} // end of class SkoolComm.Domain.Entities.Student


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\domain.res
