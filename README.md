# swift-task-linking-issue

Xcode is enable to archive and result in a linker issue that looks like this :

Showing Recent Messages
Undefined symbol: _$s9MyPackage12BaseViewCellC10fetchImage33_E60440A7DCC6C30106DE4911E7F47BA4LLySo7UIImageCSg10Foundation3URLVYaFTu

The Swift scenario is the following :
- given a class ‘open’ in a static library (SPM)
- if that class has an ‘open’ method performing an asynchronous Task, which itself calls an internal (or private) method
- when subclassing that class
- Xcode Archive can’t make it through linking

More generally, it isn't related to archiving but compiling in Release Configuration.
