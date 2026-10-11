; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [247 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [488 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 27121857, ; 3: PortMonitor.Android => 0x19dd8c1 => 0
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 220
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 233
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 11: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 117431740, ; 12: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 13: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 14: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 237
	i32 142721839, ; 15: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 16: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 17: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 18: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 204
	i32 176265551, ; 19: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 20: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 21: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 22: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230752869, ; 23: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 24: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 25: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 26: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 256616158, ; 27: Avalonia.Themes.Fluent => 0xf4ba6de => 188
	i32 276479776, ; 28: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 280482487, ; 29: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 216
	i32 291076382, ; 30: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 31: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 32: Xamarin.AndroidX.Activity.dll => 0x13031348 => 196
	i32 321597661, ; 33: System.Numerics => 0x132b30dd => 83
	i32 342366114, ; 34: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 217
	i32 360082299, ; 35: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 36: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 37: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 38: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 39: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 40: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 41: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 42: _Microsoft.Android.Resource.Designer => 0x17969339 => 243
	i32 403441872, ; 43: WindowsBase => 0x180c08d0 => 165
	i32 442565967, ; 44: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 45: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 215
	i32 451504562, ; 46: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 47: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 48: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 49: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 50: System.dll => 0x1bff388e => 164
	i32 476646585, ; 51: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 216
	i32 497347661, ; 52: Avalonia.Dialogs => 0x1da4ec4d => 176
	i32 498788369, ; 53: System.ObjectModel => 0x1dbae811 => 84
	i32 525008092, ; 54: SkiaSharp.dll => 0x1f4afcdc => 195
	i32 526420162, ; 55: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 56: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 237
	i32 527885601, ; 57: Avalonia.Skia => 0x1f76e521 => 187
	i32 530272170, ; 58: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 59: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 60: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 61: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 62: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 577335427, ; 63: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 64: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 65: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 66: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 67: Xamarin.AndroidX.CustomView => 0x2568904f => 211
	i32 637581149, ; 68: Avalonia.Controls => 0x2600b75d => 174
	i32 639843206, ; 69: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 214
	i32 643868501, ; 70: System.Net => 0x2660a755 => 81
	i32 662205335, ; 71: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 72: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 231
	i32 666292255, ; 73: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 202
	i32 672442732, ; 74: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 75: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 76: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 77: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 239
	i32 693804605, ; 78: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 79: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 80: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 234
	i32 700358131, ; 81: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 82: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 238
	i32 722857257, ; 83: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 84: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 85: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 86: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 87: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 88: System.IO.Compression => 0x2e394f87 => 46
	i32 793404064, ; 89: Avalonia.Metal.dll => 0x2f4a62a0 => 179
	i32 795860074, ; 90: Avalonia.MicroCom.dll => 0x2f6fdc6a => 180
	i32 804715423, ; 91: System.Data.Common => 0x2ff6fb9f => 22
	i32 823281589, ; 92: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 93: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 94: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 95: System.Net.Quic => 0x31b69d60 => 71
	i32 873119928, ; 96: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 97: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 98: System.Net.Http.Json => 0x3463c971 => 63
	i32 894093059, ; 99: AvaloniaUI.DiagnosticsSupport.Avalonia => 0x354ac703 => 241
	i32 904024072, ; 100: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 101: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 928116545, ; 102: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 233
	i32 952186615, ; 103: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 104: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 238
	i32 967690846, ; 105: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 217
	i32 975236339, ; 106: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 107: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 108: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 109: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 110: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 111: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 112: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1008800730, ; 113: Avalonia.Base.dll => 0x3c2113da => 173
	i32 1012816738, ; 114: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 226
	i32 1019214401, ; 115: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 116: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 192
	i32 1035644815, ; 117: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 200
	i32 1036536393, ; 118: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 119: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 120: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 221
	i32 1052365087, ; 121: Avalonia.OpenGL.dll => 0x3eb9d11f => 181
	i32 1072331303, ; 122: Avalonia.Skia.dll => 0x3fea7a27 => 187
	i32 1082857460, ; 123: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 124: Xamarin.Kotlin.StdLib => 0x409e66d8 => 235
	i32 1098259244, ; 125: System => 0x41761b2c => 164
	i32 1143774617, ; 126: MicroCom.Runtime.dll => 0x442c9d99 => 191
	i32 1170634674, ; 127: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 128: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 230
	i32 1204270330, ; 129: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 202
	i32 1208641965, ; 130: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 131: CommunityToolkit.Mvvm => 0x4868cc7b => 189
	i32 1219128291, ; 132: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1246548578, ; 133: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 205
	i32 1253011324, ; 134: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260169368, ; 135: Avalonia.Vulkan.dll => 0x4b1ca898 => 182
	i32 1264511973, ; 136: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 227
	i32 1267360935, ; 137: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 229
	i32 1275534314, ; 138: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 239
	i32 1278448581, ; 139: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 199
	i32 1286058215, ; 140: Avalonia.Fonts.Inter => 0x4ca7b0e7 => 185
	i32 1293217323, ; 141: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 212
	i32 1309188875, ; 142: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1324164729, ; 143: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 144: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 145: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 146: Xamarin.AndroidX.SavedState => 0x52114ed3 => 226
	i32 1379779777, ; 147: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1397501879, ; 148: MicroCom.Runtime => 0x534c2fb7 => 191
	i32 1402170036, ; 149: System.Configuration.dll => 0x53936ab4 => 19
	i32 1408764838, ; 150: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 151: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 152: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 153: System.Runtime.Handles => 0x557b5293 => 104
	i32 1439761251, ; 154: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 155: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 156: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 157: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 158: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 159: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 160: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 161: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 162: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 201
	i32 1479771757, ; 163: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 164: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 165: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1536373174, ; 166: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 167: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 168: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 169: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551954004, ; 170: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 194
	i32 1565862583, ; 171: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 172: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 173: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 174: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1592978981, ; 175: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1601112923, ; 176: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 177: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1613762098, ; 178: Avalonia.Base => 0x60300e32 => 173
	i32 1618516317, ; 179: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 180: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 223
	i32 1622358360, ; 181: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1623297518, ; 182: Avalonia.Markup.Xaml.dll => 0x60c18dee => 177
	i32 1624330220, ; 183: Avalonia.Themes.Fluent.dll => 0x60d14fec => 188
	i32 1635184631, ; 184: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 214
	i32 1636350590, ; 185: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 210
	i32 1639515021, ; 186: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 187: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 188: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 189: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 190: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 228
	i32 1675553242, ; 191: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 192: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 193: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 194: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 195: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 196: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 197: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 236
	i32 1701541528, ; 198: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1719496092, ; 199: PortMonitor.Android.dll => 0x667d6d9c => 0
	i32 1726116996, ; 200: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 201: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1744735666, ; 202: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 203: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 204: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 205: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 206: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 207: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 208: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 209: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 210: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 211: Xamarin.AndroidX.Fragment => 0x6a96652d => 215
	i32 1808609942, ; 212: Xamarin.AndroidX.Loader => 0x6bcd3296 => 223
	i32 1813058853, ; 213: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 235
	i32 1818787751, ; 214: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 215: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 216: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 217: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 193
	i32 1832351152, ; 218: Avalonia.Android => 0x6d3775b0 => 184
	i32 1836181115, ; 219: Avalonia.Fonts.Inter.dll => 0x6d71e67b => 185
	i32 1858542181, ; 220: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 221: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 222: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 223: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 203
	i32 1888955245, ; 224: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 225: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 226: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 227: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 228: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1919016533, ; 229: Xamarin.AndroidX.Core.SplashScreen.dll => 0x7261de55 => 209
	i32 1939592360, ; 230: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 231: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1983156543, ; 232: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 236
	i32 1994945615, ; 233: Avalonia.Metal => 0x76e8744f => 179
	i32 2011961780, ; 234: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 235: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 221
	i32 2045470958, ; 236: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 237: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 218
	i32 2060060697, ; 238: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 239: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 240: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 241: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 242: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 243: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143465592, ; 244: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 194
	i32 2143790110, ; 245: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 246: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2192057212, ; 247: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 193
	i32 2193016926, ; 248: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 249: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 240
	i32 2201231467, ; 250: System.Net.Http => 0x8334206b => 64
	i32 2203033907, ; 251: Avalonia.MicroCom => 0x834fa133 => 180
	i32 2217644978, ; 252: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 230
	i32 2220367410, ; 253: Xamarin.AndroidX.Core.SplashScreen => 0x84581e32 => 209
	i32 2222056684, ; 254: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2252106437, ; 255: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 256: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 257: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2293034957, ; 258: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 259: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 260: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 261: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309601686, ; 262: Avalonia => 0x89a9b996 => 183
	i32 2315684594, ; 263: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 197
	i32 2320631194, ; 264: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 265: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 266: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 267: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 268: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2378619854, ; 269: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 270: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2384749489, ; 271: Avalonia.Android.dll => 0x8e2463b1 => 184
	i32 2401565422, ; 272: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 273: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 213
	i32 2408407545, ; 274: Avalonia.Markup.dll => 0x8f8d61f9 => 178
	i32 2421380589, ; 275: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2435356389, ; 276: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 277: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 278: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 279: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 280: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2471841756, ; 281: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 282: Java.Interop.dll => 0x93918882 => 168
	i32 2483903535, ; 283: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 284: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 285: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 286: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 287: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 220
	i32 2538310050, ; 288: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 289: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 290: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581819634, ; 291: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 229
	i32 2585220780, ; 292: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 293: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 294: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 295: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 240
	i32 2617129537, ; 296: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 297: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 298: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 210
	i32 2627185994, ; 299: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 300: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2663698177, ; 301: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 302: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 303: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 304: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 305: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 306: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 307: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 228
	i32 2705935227, ; 308: Avalonia.OpenGL => 0xa1494b7b => 181
	i32 2713243005, ; 309: Avalonia.Remote.Protocol.dll => 0xa1b8cd7d => 186
	i32 2715334215, ; 310: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 311: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 312: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 313: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 314: Xamarin.AndroidX.Activity => 0xa2e0939b => 196
	i32 2735172069, ; 315: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 316: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 201
	i32 2740948882, ; 317: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 318: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2765824710, ; 319: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 320: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 234
	i32 2778768386, ; 321: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 232
	i32 2779977773, ; 322: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 225
	i32 2803228030, ; 323: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2819470561, ; 324: System.Xml.dll => 0xa80db4e1 => 163
	i32 2819479764, ; 325: Avalonia.Controls.dll => 0xa80dd8d4 => 174
	i32 2821205001, ; 326: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 327: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 225
	i32 2824502124, ; 328: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2849599387, ; 329: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 330: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 232
	i32 2861098320, ; 331: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2875220617, ; 332: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 333: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 334: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 335: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 336: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 337: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 338: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2919462931, ; 339: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 340: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 198
	i32 2921597873, ; 341: Avalonia.Markup.Xaml => 0xae240bb1 => 177
	i32 2936416060, ; 342: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 343: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 344: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 345: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 346: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 347: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 348: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 212
	i32 2996846495, ; 349: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 219
	i32 3016983068, ; 350: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 227
	i32 3023353419, ; 351: WindowsBase.dll => 0xb434b64b => 165
	i32 3038032645, ; 352: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 243
	i32 3059408633, ; 353: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 354: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 355: System.Threading.Tasks => 0xb755818f => 144
	i32 3083737945, ; 356: AvaloniaUI.DiagnosticsSupport.Avalonia.dll => 0xb7ce1b59 => 241
	i32 3090735792, ; 357: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3091917316, ; 358: Avalonia.Vulkan => 0xb84aea04 => 182
	i32 3099732863, ; 359: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 360: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 361: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 362: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 363: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 364: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 365: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3159123045, ; 366: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 367: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 368: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 369: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 370: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 371: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3220365878, ; 372: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 373: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 374: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3265493905, ; 375: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 376: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 377: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 378: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 379: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 380: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 381: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 382: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 383: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 384: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 211
	i32 3317144872, ; 385: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 386: SkiaSharp => 0xc71a4669 => 195
	i32 3340431453, ; 387: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 203
	i32 3345895724, ; 388: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 224
	i32 3358260929, ; 389: System.Text.Json => 0xc82afec1 => 137
	i32 3362522851, ; 390: Xamarin.AndroidX.Core => 0xc86c06e3 => 207
	i32 3366347497, ; 391: Java.Interop => 0xc8a662e9 => 168
	i32 3395150330, ; 392: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 393: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3429136800, ; 394: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 395: netstandard => 0xcc7d82b4 => 167
	i32 3445260447, ; 396: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 397: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 398: Mono.Android => 0xcf3163e6 => 171
	i32 3485117614, ; 399: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 400: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 401: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 206
	i32 3497148347, ; 402: Avalonia.Markup => 0xd0723fbb => 178
	i32 3509114376, ; 403: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 404: System.Security.dll => 0xd1854eb4 => 130
	i32 3530678503, ; 405: PortMonitor.dll => 0xd271e0e7 => 242
	i32 3530912306, ; 406: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 407: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 408: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 409: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 410: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 411: System.Linq.dll => 0xd715a361 => 61
	i32 3615210680, ; 412: Avalonia.Dialogs.dll => 0xd77bbcb8 => 176
	i32 3624195450, ; 413: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3633644679, ; 414: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 198
	i32 3638274909, ; 415: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 416: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 218
	i32 3645089577, ; 417: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3660523487, ; 418: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 419: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3684561358, ; 420: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 206
	i32 3700866549, ; 421: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 422: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 208
	i32 3716563718, ; 423: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 424: Xamarin.AndroidX.Annotation => 0xdda814c6 => 197
	i32 3732100267, ; 425: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 426: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 427: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 428: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 429: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 204
	i32 3792276235, ; 430: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3792835768, ; 431: HarfBuzzSharp => 0xe21214b8 => 190
	i32 3802395368, ; 432: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 433: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 434: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 435: System.Numerics.dll => 0xe4436460 => 83
	i32 3834491795, ; 436: PortMonitor => 0xe48db393 => 242
	i32 3841636137, ; 437: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 192
	i32 3844307129, ; 438: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 439: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 440: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 441: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 442: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 443: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3888767677, ; 444: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 224
	i32 3896106733, ; 445: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 446: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 207
	i32 3901907137, ; 447: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 448: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 205
	i32 3920810846, ; 449: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 450: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 231
	i32 3928044579, ; 451: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 452: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 453: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 454: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 455: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 200
	i32 3959773229, ; 456: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 219
	i32 4000935579, ; 457: Avalonia.dll => 0xee796e9b => 183
	i32 4003436829, ; 458: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4003906742, ; 459: HarfBuzzSharp.dll => 0xeea6c4b6 => 190
	i32 4015948917, ; 460: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 199
	i32 4025784931, ; 461: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 462: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4063759658, ; 463: Avalonia.Remote.Protocol => 0xf2380d2a => 186
	i32 4068434129, ; 464: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4071413702, ; 465: Avalonia.DesignerSupport => 0xf2acd7c6 => 175
	i32 4073602200, ; 466: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4099507663, ; 467: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 468: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 469: Xamarin.AndroidX.Emoji2 => 0xf479582c => 213
	i32 4127667938, ; 470: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 471: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 472: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 473: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 474: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 475: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 476: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 477: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 478: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 222
	i32 4185676441, ; 479: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 480: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 481: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 482: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 208
	i32 4260525087, ; 483: System.Buffers => 0xfdf2741f => 7
	i32 4261741634, ; 484: Avalonia.DesignerSupport.dll => 0xfe050442 => 175
	i32 4274623895, ; 485: CommunityToolkit.Mvvm.dll => 0xfec99597 => 189
	i32 4274976490, ; 486: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959 ; 487: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 222
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [488 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 0, ; 3
	i32 220, ; 4
	i32 233, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 102, ; 11
	i32 107, ; 12
	i32 139, ; 13
	i32 237, ; 14
	i32 77, ; 15
	i32 124, ; 16
	i32 13, ; 17
	i32 204, ; 18
	i32 132, ; 19
	i32 151, ; 20
	i32 18, ; 21
	i32 26, ; 22
	i32 1, ; 23
	i32 59, ; 24
	i32 42, ; 25
	i32 91, ; 26
	i32 188, ; 27
	i32 147, ; 28
	i32 216, ; 29
	i32 54, ; 30
	i32 69, ; 31
	i32 196, ; 32
	i32 83, ; 33
	i32 217, ; 34
	i32 131, ; 35
	i32 55, ; 36
	i32 149, ; 37
	i32 74, ; 38
	i32 145, ; 39
	i32 62, ; 40
	i32 146, ; 41
	i32 243, ; 42
	i32 165, ; 43
	i32 12, ; 44
	i32 215, ; 45
	i32 125, ; 46
	i32 152, ; 47
	i32 113, ; 48
	i32 166, ; 49
	i32 164, ; 50
	i32 216, ; 51
	i32 176, ; 52
	i32 84, ; 53
	i32 195, ; 54
	i32 150, ; 55
	i32 237, ; 56
	i32 187, ; 57
	i32 60, ; 58
	i32 51, ; 59
	i32 103, ; 60
	i32 114, ; 61
	i32 40, ; 62
	i32 120, ; 63
	i32 52, ; 64
	i32 44, ; 65
	i32 119, ; 66
	i32 211, ; 67
	i32 174, ; 68
	i32 214, ; 69
	i32 81, ; 70
	i32 136, ; 71
	i32 231, ; 72
	i32 202, ; 73
	i32 8, ; 74
	i32 73, ; 75
	i32 155, ; 76
	i32 239, ; 77
	i32 154, ; 78
	i32 92, ; 79
	i32 234, ; 80
	i32 45, ; 81
	i32 238, ; 82
	i32 109, ; 83
	i32 129, ; 84
	i32 25, ; 85
	i32 72, ; 86
	i32 55, ; 87
	i32 46, ; 88
	i32 179, ; 89
	i32 180, ; 90
	i32 22, ; 91
	i32 86, ; 92
	i32 43, ; 93
	i32 160, ; 94
	i32 71, ; 95
	i32 3, ; 96
	i32 42, ; 97
	i32 63, ; 98
	i32 241, ; 99
	i32 16, ; 100
	i32 53, ; 101
	i32 233, ; 102
	i32 105, ; 103
	i32 238, ; 104
	i32 217, ; 105
	i32 34, ; 106
	i32 158, ; 107
	i32 85, ; 108
	i32 32, ; 109
	i32 12, ; 110
	i32 51, ; 111
	i32 56, ; 112
	i32 173, ; 113
	i32 226, ; 114
	i32 36, ; 115
	i32 192, ; 116
	i32 200, ; 117
	i32 35, ; 118
	i32 58, ; 119
	i32 221, ; 120
	i32 181, ; 121
	i32 187, ; 122
	i32 17, ; 123
	i32 235, ; 124
	i32 164, ; 125
	i32 191, ; 126
	i32 153, ; 127
	i32 230, ; 128
	i32 202, ; 129
	i32 29, ; 130
	i32 189, ; 131
	i32 52, ; 132
	i32 205, ; 133
	i32 5, ; 134
	i32 182, ; 135
	i32 227, ; 136
	i32 229, ; 137
	i32 239, ; 138
	i32 199, ; 139
	i32 185, ; 140
	i32 212, ; 141
	i32 85, ; 142
	i32 61, ; 143
	i32 112, ; 144
	i32 57, ; 145
	i32 226, ; 146
	i32 99, ; 147
	i32 191, ; 148
	i32 19, ; 149
	i32 111, ; 150
	i32 101, ; 151
	i32 102, ; 152
	i32 104, ; 153
	i32 71, ; 154
	i32 38, ; 155
	i32 32, ; 156
	i32 103, ; 157
	i32 73, ; 158
	i32 9, ; 159
	i32 123, ; 160
	i32 46, ; 161
	i32 201, ; 162
	i32 9, ; 163
	i32 43, ; 164
	i32 4, ; 165
	i32 31, ; 166
	i32 138, ; 167
	i32 92, ; 168
	i32 93, ; 169
	i32 194, ; 170
	i32 49, ; 171
	i32 141, ; 172
	i32 112, ; 173
	i32 140, ; 174
	i32 115, ; 175
	i32 157, ; 176
	i32 76, ; 177
	i32 173, ; 178
	i32 79, ; 179
	i32 223, ; 180
	i32 37, ; 181
	i32 177, ; 182
	i32 188, ; 183
	i32 214, ; 184
	i32 210, ; 185
	i32 64, ; 186
	i32 138, ; 187
	i32 15, ; 188
	i32 116, ; 189
	i32 228, ; 190
	i32 48, ; 191
	i32 70, ; 192
	i32 80, ; 193
	i32 126, ; 194
	i32 94, ; 195
	i32 121, ; 196
	i32 236, ; 197
	i32 26, ; 198
	i32 0, ; 199
	i32 97, ; 200
	i32 28, ; 201
	i32 149, ; 202
	i32 169, ; 203
	i32 4, ; 204
	i32 98, ; 205
	i32 33, ; 206
	i32 93, ; 207
	i32 21, ; 208
	i32 41, ; 209
	i32 170, ; 210
	i32 215, ; 211
	i32 223, ; 212
	i32 235, ; 213
	i32 2, ; 214
	i32 134, ; 215
	i32 111, ; 216
	i32 193, ; 217
	i32 184, ; 218
	i32 185, ; 219
	i32 58, ; 220
	i32 95, ; 221
	i32 39, ; 222
	i32 203, ; 223
	i32 25, ; 224
	i32 94, ; 225
	i32 89, ; 226
	i32 99, ; 227
	i32 10, ; 228
	i32 209, ; 229
	i32 87, ; 230
	i32 100, ; 231
	i32 236, ; 232
	i32 179, ; 233
	i32 7, ; 234
	i32 221, ; 235
	i32 88, ; 236
	i32 218, ; 237
	i32 154, ; 238
	i32 33, ; 239
	i32 116, ; 240
	i32 82, ; 241
	i32 20, ; 242
	i32 11, ; 243
	i32 194, ; 244
	i32 162, ; 245
	i32 3, ; 246
	i32 193, ; 247
	i32 84, ; 248
	i32 240, ; 249
	i32 64, ; 250
	i32 180, ; 251
	i32 230, ; 252
	i32 209, ; 253
	i32 143, ; 254
	i32 157, ; 255
	i32 41, ; 256
	i32 117, ; 257
	i32 131, ; 258
	i32 75, ; 259
	i32 66, ; 260
	i32 172, ; 261
	i32 183, ; 262
	i32 197, ; 263
	i32 143, ; 264
	i32 106, ; 265
	i32 151, ; 266
	i32 70, ; 267
	i32 156, ; 268
	i32 121, ; 269
	i32 127, ; 270
	i32 184, ; 271
	i32 152, ; 272
	i32 213, ; 273
	i32 178, ; 274
	i32 141, ; 275
	i32 20, ; 276
	i32 14, ; 277
	i32 135, ; 278
	i32 75, ; 279
	i32 59, ; 280
	i32 167, ; 281
	i32 168, ; 282
	i32 15, ; 283
	i32 74, ; 284
	i32 6, ; 285
	i32 23, ; 286
	i32 220, ; 287
	i32 91, ; 288
	i32 1, ; 289
	i32 136, ; 290
	i32 229, ; 291
	i32 134, ; 292
	i32 69, ; 293
	i32 146, ; 294
	i32 240, ; 295
	i32 88, ; 296
	i32 96, ; 297
	i32 210, ; 298
	i32 31, ; 299
	i32 45, ; 300
	i32 109, ; 301
	i32 158, ; 302
	i32 35, ; 303
	i32 22, ; 304
	i32 114, ; 305
	i32 57, ; 306
	i32 228, ; 307
	i32 181, ; 308
	i32 186, ; 309
	i32 144, ; 310
	i32 118, ; 311
	i32 120, ; 312
	i32 110, ; 313
	i32 196, ; 314
	i32 139, ; 315
	i32 201, ; 316
	i32 54, ; 317
	i32 105, ; 318
	i32 133, ; 319
	i32 234, ; 320
	i32 232, ; 321
	i32 225, ; 322
	i32 159, ; 323
	i32 163, ; 324
	i32 174, ; 325
	i32 132, ; 326
	i32 225, ; 327
	i32 161, ; 328
	i32 140, ; 329
	i32 232, ; 330
	i32 169, ; 331
	i32 40, ; 332
	i32 81, ; 333
	i32 56, ; 334
	i32 37, ; 335
	i32 97, ; 336
	i32 166, ; 337
	i32 172, ; 338
	i32 82, ; 339
	i32 198, ; 340
	i32 177, ; 341
	i32 98, ; 342
	i32 30, ; 343
	i32 159, ; 344
	i32 18, ; 345
	i32 127, ; 346
	i32 119, ; 347
	i32 212, ; 348
	i32 219, ; 349
	i32 227, ; 350
	i32 165, ; 351
	i32 243, ; 352
	i32 170, ; 353
	i32 16, ; 354
	i32 144, ; 355
	i32 241, ; 356
	i32 125, ; 357
	i32 182, ; 358
	i32 118, ; 359
	i32 38, ; 360
	i32 115, ; 361
	i32 47, ; 362
	i32 142, ; 363
	i32 117, ; 364
	i32 34, ; 365
	i32 95, ; 366
	i32 53, ; 367
	i32 129, ; 368
	i32 153, ; 369
	i32 24, ; 370
	i32 161, ; 371
	i32 148, ; 372
	i32 104, ; 373
	i32 89, ; 374
	i32 60, ; 375
	i32 142, ; 376
	i32 100, ; 377
	i32 5, ; 378
	i32 13, ; 379
	i32 122, ; 380
	i32 135, ; 381
	i32 28, ; 382
	i32 72, ; 383
	i32 211, ; 384
	i32 24, ; 385
	i32 195, ; 386
	i32 203, ; 387
	i32 224, ; 388
	i32 137, ; 389
	i32 207, ; 390
	i32 168, ; 391
	i32 101, ; 392
	i32 123, ; 393
	i32 163, ; 394
	i32 167, ; 395
	i32 39, ; 396
	i32 17, ; 397
	i32 171, ; 398
	i32 137, ; 399
	i32 150, ; 400
	i32 206, ; 401
	i32 178, ; 402
	i32 155, ; 403
	i32 130, ; 404
	i32 242, ; 405
	i32 19, ; 406
	i32 65, ; 407
	i32 147, ; 408
	i32 47, ; 409
	i32 79, ; 410
	i32 61, ; 411
	i32 176, ; 412
	i32 106, ; 413
	i32 198, ; 414
	i32 49, ; 415
	i32 218, ; 416
	i32 14, ; 417
	i32 68, ; 418
	i32 171, ; 419
	i32 206, ; 420
	i32 78, ; 421
	i32 208, ; 422
	i32 108, ; 423
	i32 197, ; 424
	i32 67, ; 425
	i32 63, ; 426
	i32 27, ; 427
	i32 160, ; 428
	i32 204, ; 429
	i32 10, ; 430
	i32 190, ; 431
	i32 11, ; 432
	i32 78, ; 433
	i32 126, ; 434
	i32 83, ; 435
	i32 242, ; 436
	i32 192, ; 437
	i32 66, ; 438
	i32 107, ; 439
	i32 65, ; 440
	i32 128, ; 441
	i32 122, ; 442
	i32 77, ; 443
	i32 224, ; 444
	i32 8, ; 445
	i32 207, ; 446
	i32 2, ; 447
	i32 205, ; 448
	i32 44, ; 449
	i32 231, ; 450
	i32 156, ; 451
	i32 128, ; 452
	i32 23, ; 453
	i32 133, ; 454
	i32 200, ; 455
	i32 219, ; 456
	i32 183, ; 457
	i32 29, ; 458
	i32 190, ; 459
	i32 199, ; 460
	i32 62, ; 461
	i32 90, ; 462
	i32 186, ; 463
	i32 87, ; 464
	i32 175, ; 465
	i32 148, ; 466
	i32 36, ; 467
	i32 86, ; 468
	i32 213, ; 469
	i32 50, ; 470
	i32 6, ; 471
	i32 90, ; 472
	i32 21, ; 473
	i32 162, ; 474
	i32 96, ; 475
	i32 50, ; 476
	i32 113, ; 477
	i32 222, ; 478
	i32 130, ; 479
	i32 76, ; 480
	i32 27, ; 481
	i32 208, ; 482
	i32 7, ; 483
	i32 175, ; 484
	i32 189, ; 485
	i32 110, ; 486
	i32 222 ; 487
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
