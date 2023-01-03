object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Chet - C header translator'
  ClientHeight = 898
  ClientWidth = 1308
  Color = clBtnFace
  Constraints.MinHeight = 760
  Constraints.MinWidth = 1160
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 192
  TextHeight = 27
  object StatusBar: TStatusBar
    Left = 0
    Top = 860
    Width = 1308
    Height = 38
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Panels = <>
  end
  object ButtonGroupCategories: TButtonGroup
    Left = 0
    Top = 0
    Width = 250
    Height = 860
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alLeft
    BorderStyle = bsNone
    ButtonHeight = 48
    ButtonWidth = 48
    ButtonOptions = [gboFullSize, gboGroupStyle, gboShowCaptions]
    Items = <
      item
        Caption = 'Project'
      end
      item
        Caption = 'Platforms'
      end
      item
        Caption = 'Parse Options'
      end
      item
        Caption = 'Conversion Options'
      end
      item
        Caption = 'Ignore'
      end
      item
        Caption = 'Post Process'
      end
      item
        Caption = 'Translate'
      end>
    ItemIndex = 0
    TabOrder = 1
    OnButtonClicked = ButtonGroupCategoriesButtonClicked
  end
  object CardPanel: TCardPanel
    Left = 250
    Top = 0
    Width = 1058
    Height = 860
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    ActiveCard = CardPlatforms
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Top = 8
    TabOrder = 2
    object CardProject: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Project'
      CardIndex = 0
      TabOrder = 0
      DesignSize = (
        1050
        852)
      object LabelHeaderFileDirectory: TLabel
        Left = 4
        Top = 0
        Width = 287
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Directory with C Header files:'
      end
      object LabelPasFile: TLabel
        Left = 4
        Top = 218
        Width = 176
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Target Pascal file:'
      end
      object LabelUses: TLabel
        Left = 4
        Top = 306
        Width = 384
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Comma-separated list of units to "use":'
      end
      object LabelIgnoredHeaders: TLabel
        Left = 4
        Top = 134
        Width = 608
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Comma-separated list of files to "ignore" in headers Directory:'
      end
      object EditHeaderFileDirectory: TEdit
        Left = 4
        Top = 30
        Width = 938
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = EditHeaderFileDirectoryChange
      end
      object ButtonBrowseHeaderFileDirectory: TButton
        Left = 948
        Top = 28
        Width = 66
        Height = 46
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akTop, akRight]
        Caption = '...'
        TabOrder = 1
        OnClick = ButtonBrowseHeaderFileDirectoryClick
      end
      object CheckBoxIncludeSubdiretories: TCheckBox
        Left = 4
        Top = 90
        Width = 334
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Include subdirectories'
        TabOrder = 2
        OnClick = CheckBoxIncludeSubdiretoriesClick
      end
      object EditPasFile: TEdit
        Left = 4
        Top = 248
        Width = 938
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        OnChange = EditPasFileChange
      end
      object ButtonBrowsePasFile: TButton
        Left = 948
        Top = 246
        Width = 66
        Height = 46
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akTop, akRight]
        Caption = '...'
        TabOrder = 5
        OnClick = ButtonBrowsePasFileClick
      end
      object EditUseUnits: TEdit
        Left = 4
        Top = 336
        Width = 1006
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        OnChange = EditUseUnitsChange
      end
      object EditIgnoredHeaders: TEdit
        Left = 4
        Top = 164
        Width = 1006
        Height = 35
        Hint = 
          'eq. ".\subdir1\header1.h,subdir2\header2.h" or "header1.h,.\head' +
          'er2.h"'
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnChange = EditIgnoredHeadersChange
      end
    end
    object CardPlatforms: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Platforms'
      CardIndex = 1
      TabOrder = 4
      ExplicitLeft = 12
      object LabelPlatform: TLabel
        Left = 12
        Top = 136
        Width = 89
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Platform:'
      end
      object LabelLibrary: TLabel
        Left = 236
        Top = 136
        Width = 136
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Library name:'
      end
      object LabelPrefix: TLabel
        Left = 760
        Top = 136
        Width = 124
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Prefix (_PU):'
      end
      object LabelLibConstant: TLabel
        Left = 12
        Top = 14
        Width = 164
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Library constant:'
      end
      object LabelDebugDefine: TLabel
        Left = 12
        Top = 68
        Width = 138
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Debug define:'
      end
      object LabelDebugLibraryName: TLabel
        Left = 502
        Top = 132
        Width = 200
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Debug lib (optional):'
      end
      object EditLibWin32: TEdit
        Left = 236
        Top = 166
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 3
        OnChange = EditLibraryNameChange
      end
      object CheckBoxWin32: TCheckBox
        Left = 12
        Top = 170
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = '32-bit Windows'
        TabOrder = 2
        OnClick = CheckBoxPlatformClick
      end
      object EditLibWin64: TEdit
        Tag = 1
        Left = 236
        Top = 220
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 7
        OnChange = EditLibraryNameChange
      end
      object CheckBoxWin64: TCheckBox
        Tag = 1
        Left = 12
        Top = 224
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = '64-bit Windows'
        TabOrder = 6
        OnClick = CheckBoxPlatformClick
      end
      object CheckBoxMacARM: TCheckBox
        Tag = 2
        Left = 12
        Top = 278
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'ARM macOS'
        TabOrder = 10
        OnClick = CheckBoxPlatformClick
      end
      object EditLibMacARM: TEdit
        Tag = 2
        Left = 236
        Top = 274
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 11
        OnChange = EditLibraryNameChange
      end
      object CheckBoxLinux64: TCheckBox
        Tag = 4
        Left = 12
        Top = 386
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = '64-bit Linux'
        TabOrder = 18
        OnClick = CheckBoxPlatformClick
      end
      object EditLibLinux64: TEdit
        Tag = 4
        Left = 236
        Top = 382
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 19
        OnChange = EditLibraryNameChange
      end
      object CheckBoxIOS: TCheckBox
        Tag = 5
        Left = 12
        Top = 440
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'iOS'
        TabOrder = 22
        OnClick = CheckBoxPlatformClick
      end
      object EditLibIOS: TEdit
        Tag = 5
        Left = 236
        Top = 436
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 23
        OnChange = EditLibraryNameChange
      end
      object CheckBoxAndroid32: TCheckBox
        Tag = 6
        Left = 12
        Top = 494
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = '32-bit Android'
        TabOrder = 26
        OnClick = CheckBoxPlatformClick
      end
      object EditLibAndroid32: TEdit
        Tag = 6
        Left = 236
        Top = 490
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 27
        OnChange = EditLibraryNameChange
      end
      object EditPrefixWin32: TEdit
        Left = 760
        Top = 166
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 5
        OnChange = EditPrefixChange
      end
      object EditPrefixWin64: TEdit
        Tag = 1
        Left = 760
        Top = 220
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 9
        OnChange = EditPrefixChange
      end
      object EditPrefixMacARM: TEdit
        Tag = 2
        Left = 760
        Top = 274
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 13
        OnChange = EditPrefixChange
      end
      object EditPrefixLinux64: TEdit
        Tag = 4
        Left = 760
        Top = 382
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 21
        OnChange = EditPrefixChange
      end
      object EditPrefixIOS: TEdit
        Tag = 5
        Left = 760
        Top = 436
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 25
        OnChange = EditPrefixChange
      end
      object EditPrefixAndroid32: TEdit
        Tag = 6
        Left = 760
        Top = 490
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 29
        OnChange = EditPrefixChange
      end
      object EditLibConstant: TEdit
        Left = 236
        Top = 8
        Width = 350
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 0
        OnChange = EditLibConstantChange
      end
      object CheckBoxMacIntel: TCheckBox
        Tag = 3
        Left = 12
        Top = 332
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Intel macOS'
        TabOrder = 14
        OnClick = CheckBoxPlatformClick
      end
      object EditLibMacIntel: TEdit
        Tag = 3
        Left = 236
        Top = 328
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 15
        OnChange = EditLibraryNameChange
      end
      object EditPrefixMacIntel: TEdit
        Tag = 3
        Left = 760
        Top = 328
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 17
        OnChange = EditPrefixChange
      end
      object CheckBoxAndroid64: TCheckBox
        Tag = 7
        Left = 12
        Top = 548
        Width = 220
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = '64-bit Android'
        TabOrder = 30
        OnClick = CheckBoxPlatformClick
      end
      object EditLibAndroid64: TEdit
        Tag = 7
        Left = 236
        Top = 544
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 31
        OnChange = EditLibraryNameChange
      end
      object EditPrefixAndroid64: TEdit
        Tag = 7
        Left = 760
        Top = 544
        Width = 60
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 33
        OnChange = EditPrefixChange
      end
      object EditDebugDefine: TEdit
        Left = 236
        Top = 62
        Width = 350
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 1
        OnChange = EditDebugDefineChange
      end
      object EditLibDbgAndroid64: TEdit
        Tag = 7
        Left = 498
        Top = 544
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 32
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgAndroid32: TEdit
        Tag = 6
        Left = 498
        Top = 490
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 28
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgIOS: TEdit
        Tag = 5
        Left = 498
        Top = 436
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 24
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgLinux64: TEdit
        Tag = 4
        Left = 498
        Top = 382
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 20
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgMacIntel: TEdit
        Tag = 3
        Left = 498
        Top = 328
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 16
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgMacARM: TEdit
        Tag = 2
        Left = 498
        Top = 274
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 12
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgWin64: TEdit
        Tag = 1
        Left = 498
        Top = 220
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 8
        OnChange = EditDebugLibraryNameChange
      end
      object EditLibDbgWin32: TEdit
        Left = 498
        Top = 166
        Width = 250
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        TabOrder = 4
        OnChange = EditDebugLibraryNameChange
      end
    end
    object CardParseOptions: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Parse Options'
      CardIndex = 2
      TabOrder = 1
      object LabelCmdLineArgs: TLabel
        Left = 4
        Top = 46
        Width = 420
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Command line arguments to pass to Clang:'
      end
      object CheckBoxIgnoreParseErrors: TCheckBox
        Left = 4
        Top = 0
        Width = 298
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Ignore parse errors'
        TabOrder = 0
        OnClick = CheckBoxIgnoreParseErrorsClick
      end
      object ListBoxCmdLineArgs: TListBox
        Left = 4
        Top = 76
        Width = 806
        Height = 228
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        ItemHeight = 27
        TabOrder = 1
        OnClick = ListBoxCmdLineArgsClick
      end
      object ButtonAddCmdLineArg: TButton
        Left = 4
        Top = 316
        Width = 200
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = ActionAddCmdLineArg
        TabOrder = 2
      end
      object ButtonDeleteArgument: TButton
        Left = 608
        Top = 316
        Width = 200
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = ActionDeleteCmdLineArg
        TabOrder = 5
      end
      object ButtonAddDefine: TButton
        Left = 206
        Top = 316
        Width = 200
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = ActionAddDefine
        TabOrder = 3
      end
      object ButtonAddIncludePath: TButton
        Left = 408
        Top = 316
        Width = 200
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = ActionAddIncludePath
        TabOrder = 4
      end
    end
    object CardConversionOptions: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Conversion Options'
      CardIndex = 3
      TabOrder = 3
      DesignSize = (
        1050
        852)
      object LabelConvertChar: TLabel
        Left = 12
        Top = 122
        Width = 176
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Convert "char" to:'
      end
      object LabelConvertComments: TLabel
        Left = 12
        Top = 68
        Width = 189
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Comment handling:'
      end
      object LabelCallConv: TLabel
        Left = 12
        Top = 14
        Width = 184
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Calling convention:'
      end
      object LabelReservedWordHandling: TLabel
        Left = 12
        Top = 231
        Width = 243
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Reserved word handling:'
      end
      object LabelUnconvertibleHandling: TLabel
        Left = 12
        Top = 385
        Width = 264
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Unconvertible declarations:'
      end
      object LabelEnumHandling: TLabel
        Left = 12
        Top = 331
        Width = 151
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Enum handling:'
      end
      object LabelConvertUnsignedChar: TLabel
        Left = 14
        Top = 176
        Width = 270
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Convert "unsigned char" to:'
      end
      object LabelCustomTypes: TLabel
        Left = 14
        Top = 525
        Width = 188
        Height = 27
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Custom types map:'
        FocusControl = MemoCustomTypesMap
      end
      object ComboBoxConvertChar: TComboBox
        Left = 296
        Top = 116
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'UTF8Char'
        OnChange = ComboBoxConvertCharChange
        Items.Strings = (
          'UTF8Char'
          'Shortint'
          'Byte'
          'AnsiString')
      end
      object ComboBoxConvertComments: TComboBox
        Left = 296
        Top = 62
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Keep comments as-is'
        OnChange = ComboBoxConvertCommentsChange
        Items.Strings = (
          'Keep comments as-is'
          'Remove comments'
          'Convert comments to XmlDoc style (experimental)'
          'Convert comments to PasDoc style (experimental)')
      end
      object ComboBoxCallConv: TComboBox
        Left = 296
        Top = 8
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'cdecl'
        OnChange = ComboBoxCallConvChange
        Items.Strings = (
          'cdecl'
          'stdcall')
      end
      object ComboBoxReservedWordHandling: TComboBox
        Left = 296
        Top = 225
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 4
        Text = 'Add leading '#39'&'#39
        OnChange = ComboBoxReservedWordHandlingChange
        Items.Strings = (
          'Add leading '#39'&'#39
          'Add leading '#39'_'#39
          'Add trailing '#39'_'#39)
      end
      object CheckBoxDirectivesAsReservedWords: TCheckBox
        Left = 12
        Top = 279
        Width = 382
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Treat directives as reserved words'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = CheckBoxDirectivesAsReservedWordsClick
      end
      object ComboBoxUnconvertibleHandling: TComboBox
        Left = 296
        Top = 379
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Text = 'Write TODO item'
        OnChange = ComboBoxUnconvertibleHandlingChange
        Items.Strings = (
          'Write TODO item'
          'Comment out original declaration'
          'Ignore declaration')
      end
      object ComboBoxEnumHandling: TComboBox
        Left = 296
        Top = 325
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 6
        Text = 'Convert to enumerated type'
        OnChange = ComboBoxEnumHandlingChange
        Items.Strings = (
          'Convert to enumerated type'
          'Convert to integer type and constants')
      end
      object ComboBoxConvertUnsignedChar: TComboBox
        Left = 296
        Top = 170
        Width = 560
        Height = 35
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 3
        Text = 'Byte'
        OnChange = ComboBoxConvertUnsignedCharChange
        Items.Strings = (
          'UTF8Char'
          'Shortint'
          'Byte'
          'AnsiString')
      end
      object CheckBoxDelayedLoading: TCheckBox
        Left = 12
        Top = 433
        Width = 662
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Add "delayed" directive to imported routines (Windows only)'
        TabOrder = 8
        OnClick = CheckBoxDelayedLoadingClick
      end
      object CheckBoxPrefixSymbolsWithUnderscore: TCheckBox
        Left = 14
        Top = 479
        Width = 662
        Height = 34
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Prefix all symbols with an underscore (experimental)'
        TabOrder = 9
        Visible = False
        OnClick = CheckBoxPrefixSymbolsWithUnderscoreClick
      end
      object MemoCustomTypesMap: TMemo
        Left = 4
        Top = 563
        Width = 1022
        Height = 268
        Hint = 
          'Input format: CTypeName=DelphiTypeName. Use CTRL + ENTER to inse' +
          'rt new line.'
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
        WantReturns = False
        WordWrap = False
      end
    end
    object CardIgnore: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Ignore'
      CardIndex = 4
      TabOrder = 5
      object LabelIgnore: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 8
        Width = 1032
        Height = 54
        Margins.Left = 12
        Margins.Top = 8
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alTop
        Caption = 
          'Symbols (constants, types, functions) to ignore. These will not ' +
          'be translated. Enter one symbol per line. Symbols are case-sensi' +
          'tive.'
        WordWrap = True
        ExplicitWidth = 1017
      end
      object MemoIgnore: TMemo
        AlignWithMargins = True
        Left = 8
        Top = 68
        Width = 1034
        Height = 776
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
        OnExit = MemoIgnoreExit
      end
    end
    object PostProcess: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'PostProcess'
      CardIndex = 5
      TabOrder = 6
      DesignSize = (
        1050
        852)
      object ScriptMemo: TMemo
        Left = 8
        Top = 96
        Width = 1490
        Height = 1142
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -36
        Font.Name = 'Consolas'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object ButtonClearScript: TButton
        Left = 8
        Top = 0
        Width = 226
        Height = 76
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Caption = 'Clear Script'
        TabOrder = 1
        OnClick = ButtonClearScriptClick
      end
      object ButtonScriptHelp: TButton
        Left = 254
        Top = 0
        Width = 226
        Height = 76
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Caption = 'Script Help'
        TabOrder = 2
        OnClick = ButtonScriptHelpClick
      end
    end
    object CardTranslate: TCard
      Left = 8
      Top = 8
      Width = 1050
      Height = 852
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Translate'
      CardIndex = 6
      TabOrder = 2
      object ButtonRunTranslator: TButton
        Left = 4
        Top = 0
        Width = 302
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = ActionRunTranslator
        TabOrder = 0
      end
      object MemoMessages: TMemo
        AlignWithMargins = True
        Left = 4
        Top = 56
        Width = 1046
        Height = 796
        Margins.Left = 4
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 276
    Top = 460
    object MenuFile: TMenuItem
      Caption = 'File'
      object MenuNew: TMenuItem
        Action = ActionNew
      end
      object MenuOpen: TMenuItem
        Action = ActionOpen
      end
      object MenuSave: TMenuItem
        Action = ActionSave
      end
      object MenuSaveAs: TMenuItem
        Action = ActionSaveAs
      end
      object MenuSeparator: TMenuItem
        Caption = '-'
      end
      object MenuExit: TMenuItem
        Action = ActionExit
      end
    end
    object MenuRun: TMenuItem
      Caption = 'Run'
      object MenuRunTranslator: TMenuItem
        Action = ActionRunTranslator
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 48
    Top = 188
    object ActionAddCmdLineArg: TAction
      Category = 'Parse Options'
      Caption = 'Add Argument'
      OnExecute = ActionAddCmdLineArgExecute
    end
    object ActionAddIncludePath: TAction
      Category = 'Parse Options'
      Caption = 'Add Include Path'
      OnExecute = ActionAddIncludePathExecute
    end
    object ActionAddDefine: TAction
      Category = 'Parse Options'
      Caption = 'Add Define'
      OnExecute = ActionAddDefineExecute
    end
    object ActionDeleteCmdLineArg: TAction
      Category = 'Parse Options'
      Caption = 'Delete Argument'
      Enabled = False
      OnExecute = ActionDeleteCmdLineArgExecute
    end
    object ActionRunTranslator: TAction
      Category = 'Translate'
      Caption = 'Run Header Translator'
      ImageIndex = 4
      ShortCut = 120
      OnExecute = ActionRunTranslatorExecute
    end
    object ActionNew: TAction
      Category = 'File'
      Caption = 'New Project...'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = ActionNewExecute
    end
    object ActionOpen: TAction
      Category = 'File'
      Caption = 'Open Project...'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = ActionOpenExecute
    end
    object ActionSave: TAction
      Category = 'File'
      Caption = 'Save'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = ActionSaveExecute
    end
    object ActionSaveAs: TAction
      Category = 'File'
      Caption = 'Save As...'
      ShortCut = 49235
      OnExecute = ActionSaveAsExecute
    end
    object ActionExit: TAction
      Category = 'File'
      Caption = 'Exit'
      ImageIndex = 3
      ShortCut = 32883
      OnExecute = ActionExitExecute
    end
  end
  object OpenDirectoryDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Header files'
        FileMask = '*.h;*.hpp'
      end>
    Options = [fdoPickFolders, fdoPathMustExist]
    Left = 32
    Top = 336
  end
  object SaveDialogProject: TFileSaveDialog
    DefaultExtension = 'htrans'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Chet Project Files'
        FileMask = '*.chet'
      end>
    Options = [fdoOverWritePrompt, fdoPathMustExist]
    Title = 'Save project file'
    Left = 36
    Top = 524
  end
  object SaveDialogPasFile: TFileSaveDialog
    DefaultExtension = 'htrans'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Delphi Pascal Files'
        FileMask = '*.pas'
      end>
    Options = [fdoOverWritePrompt, fdoPathMustExist]
    Title = 'Target Pascal file'
    Left = 168
    Top = 412
  end
  object OpenDialogProject: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Chet Project Files'
        FileMask = '*.chet'
      end>
    Options = [fdoPathMustExist, fdoFileMustExist]
    Title = 'Open project file'
    Left = 44
    Top = 440
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Left = 176
    Top = 532
    Bitmap = {
      494C010105004000040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000767676AE0202
      021A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFE1E1
      E1F0292929670000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF959595C306060628000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3F3F3F93F3F3F7F0000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3D60D0D0D3B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE585858960000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCD
      CDE5191919510000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCD
      CDE5191919510000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE595959970000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3D60D0D0D3B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3F3F3F9404040800000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF959595C306060629000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFE1E1
      E1F02A2A2A680000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000767676AE0202
      021A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F3EA1A1A1CBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA0A0A0CA0E0E0E3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1CBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0CA000000000707072C8C8C8CBD0101
      0115000000000000000000000000000000000000000000000000000000000000
      0000010101158C8C8CBD0707072C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5FA6363639F0A0A0A340A0A0A346363639FF5F5F5FAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000008C8C8CBDFFFFFFFFAEAE
      AED3010101150000000000000000000000000000000000000000000000000101
      0115AEAEAED3FFFFFFFF8C8C8CBD00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6363639F00000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000001010115AEAEAED3FFFF
      FFFFAEAEAED3010101150000000000000000000000000000000001010115AEAE
      AED3FFFFFFFFAEAEAED30101011500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0A0A0A35000000000000000000000000000000000A0A0A35FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010115AEAE
      AED3FFFFFFFFAEAEAED301010115000000000000000001010115AEAEAED3FFFF
      FFFFAEAEAED3010101150000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0A0A0A35000000000000000000000000000000000A0A0A35FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000101
      0115AEAEAED3FFFFFFFFAEAEAED30101011501010115AEAEAED3FFFFFFFFAEAE
      AED301010115000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6363639F00000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000001010115AEAEAED3FFFFFFFFAEAEAED3AEAEAED3FFFFFFFFAEAEAED30101
      011500000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5FA6363639F0A0A0A350A0A0A356363639FF5F5F5FAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000001010115AEAEAED3FFFFFFFFFFFFFFFFAEAEAED3010101150000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000001010115AEAEAED3FFFFFFFFFFFFFFFFAEAEAED3010101150000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000001010115AEAEAED3FFFFFFFFAEAEAED3AEAEAED3FFFFFFFFAEAEAED30101
      011500000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000101
      0115AEAEAED3FFFFFFFFAEAEAED30101011501010115AEAEAED3FFFFFFFFAEAE
      AED301010115000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010115AEAE
      AED3FFFFFFFFAEAEAED301010115000000000000000001010115AEAEAED3FFFF
      FFFFAEAEAED3010101150000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000001010115AEAEAED3FFFF
      FFFFAEAEAED3010101150000000000000000000000000000000001010115AEAE
      AED3FFFFFFFFAEAEAED30101011500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF404040800000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF404040800000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFF40404080000000008C8C8CBDFFFFFFFFAEAE
      AED3010101150000000000000000000000000000000000000000000000000101
      0115AEAEAED3FFFFFFFF8C8C8CBD00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF40404080000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF40404080000000000000000000000000000000000000
      000000000000000000000000000000000000A1A1A1CBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4040408000000000000000000707072C8C8C8CBD0101
      0115000000000000000000000000000000000000000000000000000000000000
      0000010101158C8C8CBD0707072C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F3EA1A1A1CBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4040408000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
