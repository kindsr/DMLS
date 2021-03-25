object Main: TMain
  Left = 300
  Top = 200
  BorderStyle = bsNone
  Caption = 'DMLS'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Symbol'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object pnlBackground: TscGPPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Align = alClient
    TabOrder = 0
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 1
    FillColor = clBtnFace
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = 10114859
    FrameColorAlpha = 255
    FrameRadius = 0
    ScaleFrameWidth = False
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'pnlBackground'
    TransparentBackground = False
    StorePaintBuffer = True
    DesignSize = (
      800
      600)
    object pnlTitle: TscGPPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 34
      Align = alTop
      TabOrder = 0
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 10114859
      FillColorAlpha = 255
      FillColor2 = clNone
      FrameColor = clBtnShadow
      FrameColorAlpha = 255
      FrameRadius = 0
      ShowCaption = False
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'scGPPanel2'
      TransparentBackground = False
      StorePaintBuffer = False
      object CloseButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 748
        Top = 0
        Width = 50
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        TabOrder = 5
        OnClick = CloseButtonClick
        Animation = True
        Caption = 'CloseButton'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clNone
        Options.HotColor = clRed
        Options.PressedColor = clRed
        Options.FocusedColor = clBtnFace
        Options.DisabledColor = clBtnText
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 220
        Options.PressedColorAlpha = 180
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 255
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkClose
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object MinButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 648
        Top = 0
        Width = 50
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        TabOrder = 3
        OnClick = MinButtonClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkMinimize
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object labelTitle: TscLabel
        Left = 51
        Top = 0
        Width = 552
        Height = 34
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Symbol'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnDblClick = labelTitleDblClick
        OnMouseDown = labelTitleMouseDown
        OnMouseMove = labelTitleMouseMove
        OnMouseUp = labelTitleMouseUp
        DragForm = True
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 2
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        Alignment = taCenter
        VertAlignment = scvtaCenter
        UseFontColorToStyleColor = True
        Caption = 'DIVUS Machine Learning Solution'
      end
      object scGPGlyphButton4: TscGPGlyphButton
        AlignWithMargins = True
        Left = 608
        Top = 0
        Width = 35
        Height = 33
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 1
        Align = alRight
        TabOrder = 2
        OnClick = OptionClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkGear
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 2
        AllowAllUp = True
      end
      object MaxButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 698
        Top = 0
        Width = 50
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        TabOrder = 4
        Visible = False
        OnClick = MaxButtonClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkMaximize
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object btnDetail: TscGPGlyphButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 51
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        TabOrder = 0
        OnClick = btnDetailClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkDetails
        GlyphOptions.Thickness = 3
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
    end
    object pnlStatusBar: TscGPPanel
      Left = 1
      Top = 573
      Width = 798
      Height = 26
      Align = alBottom
      TabOrder = 6
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 10114859
      FillColorAlpha = 255
      FillColor2 = clNone
      FrameColor = clBtnShadow
      FrameColorAlpha = 255
      FrameRadius = 0
      ShowCaption = False
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'scGPPanel3'
      TransparentBackground = False
      StorePaintBuffer = True
      object scGPTrackBar1: TscGPTrackBar
        AlignWithMargins = True
        Left = 29
        Top = 3
        Width = 100
        Height = 21
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 2
        Align = alLeft
        TabOrder = 4
        Visible = False
        TransparentBackground = True
        ShowFocusRect = True
        JumpWhenClick = True
        CanFocused = False
        MouseSupport = True
        MinValue = 0
        MaxValue = 100
        Value = 50
        Vertical = False
        ReadOnly = False
        TrackColor = clWhite
        TrackProgressColor = clWhite
        TrackSize = 1
        TrackAlpha = 100
        TrackProgressAlpha = 255
        ThumbColor = clWhite
        ThumbHotColor = clWhite
        ThumbPressedColor = clWhite
        ThumbDisabledColor = clBtnShadow
        ThumbShapeStyle = scgptssRoundRect
        ThumbCursor = crDefault
        ThumbUseCursor = False
      end
      object scGPGlyphButton10: TscGPGlyphButton
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 27
        Height = 25
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        TabOrder = 2
        Visible = False
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 255
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkMinus
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object scGPGlyphButton11: TscGPGlyphButton
        AlignWithMargins = True
        Left = 130
        Top = 1
        Width = 27
        Height = 25
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 0
        Align = alLeft
        TabOrder = 3
        Visible = False
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 255
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkPlus
        GlyphOptions.Thickness = 1
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object lblStatusText: TscLabel
        AlignWithMargins = True
        Left = 178
        Top = 3
        Width = 566
        Height = 20
        Margins.Left = 20
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        StyleElements = [seClient, seBorder]
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        VertAlignment = scvtaCenter
        UseFontColorToStyleColor = True
      end
      object pgBar: TscGPProgressBar
        Left = 599
        Top = 0
        Width = 173
        Height = 26
        Align = alRight
        TabOrder = 0
        Vertical = False
        AnimationMode = False
        Active = True
        TransparentBackground = True
        FrameAlpha = 125
        ProgressAlpha = 255
        FrameColor = clBtnShadow
        ProgressColor = clHighlight
        MinValue = 0
        MaxValue = 100
        Value = 0
      end
      object scGPSizeBox1: TscGPSizeBox
        Left = 772
        Top = 0
        Width = 26
        Height = 26
        Align = alRight
        TabOrder = 1
        GlyphColor = clWhite
        GlyphColorAlpha = 200
        GlyphThickness = 1
      end
    end
    object pnlSubForm: TscGPPanel
      Left = 1
      Top = 35
      Width = 798
      Height = 538
      ParentCustomHint = False
      Align = alClient
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 2
      FillColor = clBtnFace
      FillColorAlpha = 150
      FillColor2 = clNone
      FrameColor = clNone
      FrameColorAlpha = 255
      FrameRadius = 0
      ShowCaption = False
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'pnlSubForm'
      TransparentBackground = True
      StorePaintBuffer = True
    end
    object svOption: TscSplitView
      Left = 799
      Top = 35
      Width = 0
      Height = 538
      Anchors = [akTop, akRight, akBottom]
      Enabled = False
      TabOrder = 3
      CustomImageIndex = -1
      StyleKind = scpsPanel
      ShowCaption = False
      BorderStyle = scpbsLeftShadowLine
      WallpaperIndex = -1
      LightBorderColor = clBtnHighlight
      ShadowBorderColor = clBtnShadow
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      StorePaintBuffer = False
      AnimationStep = 25
      CompactWidth = 0
      CompactHeight = 20
      GripSize = 0
      Opened = False
      OpenedWidth = 250
      OpenedHeight = 50
      OpenedMinWidth = 0
      OpenedMaxWidth = 0
      OpenedMinHeight = 0
      OpenedMaxHeight = 0
      ParentBackground = False
      ParentColor = False
      Placement = scsvpRight
      HideControls = False
      Animation = True
      DisplayMode = scsvmOverlay
      object scLabel5: TscLabel
        AlignWithMargins = True
        Left = 11
        Top = 10
        Width = 229
        Height = 30
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Options'
      end
      object scScrollBox1: TscScrollBox
        Left = 1
        Top = 50
        Width = 249
        Height = 488
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alLeft
        BorderStyle = bsNone
        TabOrder = 2
        WallpaperIndex = -1
        CustomBackgroundImageIndex = -1
        FullUpdate = False
        BackgroundStyle = scsbsPanel
        object scListGroupPanel1: TscListGroupPanel
          Left = 0
          Top = 0
          Width = 249
          Height = 150
          Align = alTop
          TabOrder = 0
          AutoSize = True
          RowCount = 3
          RowLineMargin = 20
          RowHeight = 40
          GroupColor = clWindow
          GroupColorAlpha = 255
          Color = clBtnFace
          Caption = 'Make Contents Menu'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBtnText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderHeight = 30
          HeaderMargin = 10
          HeaderAutoColor = True
          TransparentBackground = False
          object scLabel6: TscLabel
            Left = 20
            Top = 47
            Width = 82
            Height = 17
            TabOrder = 1
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'Overlay mode'
          end
          object scLabel9: TscLabel
            Left = 20
            Top = 85
            Width = 58
            Height = 17
            TabOrder = 3
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'Animation'
          end
          object swiOverlayMode: TscGPSwitch
            Left = 170
            Top = 43
            Width = 44
            Height = 20
            TabOrder = 0
            Animation = True
            FrameColor = clWindowText
            FrameOnColor = clHighlight
            FramePressedColor = clBtnShadow
            ParentColor = True
            State = scswOn
            StyleKind = scswsStyled
            ThumbColor = clWindowText
            ThumbOnColor = clHighlightText
            ThumbPressedColor = clBtnText
            FrameColorAlpha = 255
            FrameOnColorAlpha = 255
            FramePressedColorAlpha = 255
            ThumbColorAlpha = 255
            ThumbOnColorAlpha = 255
            ThumbPressedColorAlpha = 255
            ThumbShadow = False
            FrameSolid = False
            FrameOnSolid = True
            FrameInside = False
            OnChangeState = swiOverlayModeChangeState
          end
          object swiAnimation: TscGPSwitch
            Left = 170
            Top = 82
            Width = 44
            Height = 20
            TabOrder = 2
            Animation = True
            FrameColor = clWindowText
            FrameOnColor = clHighlight
            FramePressedColor = clBtnShadow
            ParentColor = True
            State = scswOn
            StyleKind = scswsStyled
            ThumbColor = clWindowText
            ThumbOnColor = clHighlightText
            ThumbPressedColor = clBtnText
            FrameColorAlpha = 255
            FrameOnColorAlpha = 255
            FramePressedColorAlpha = 255
            ThumbColorAlpha = 255
            ThumbOnColorAlpha = 255
            ThumbPressedColorAlpha = 255
            ThumbShadow = False
            FrameSolid = False
            FrameOnSolid = True
            FrameInside = False
            OnChangeState = swiAnimationChangeState
          end
          object scLabel1: TscLabel
            Left = 20
            Top = 124
            Width = 88
            Height = 17
            TabOrder = 5
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'Close Compact'
          end
          object swiCloseMode: TscGPSwitch
            Left = 170
            Top = 121
            Width = 44
            Height = 20
            TabOrder = 4
            Animation = True
            FrameColor = clWindowText
            FrameOnColor = clHighlight
            FramePressedColor = clBtnShadow
            ParentColor = True
            State = scswOn
            StyleKind = scswsStyled
            ThumbColor = clWindowText
            ThumbOnColor = clHighlightText
            ThumbPressedColor = clBtnText
            FrameColorAlpha = 255
            FrameOnColorAlpha = 255
            FramePressedColorAlpha = 255
            ThumbColorAlpha = 255
            ThumbOnColorAlpha = 255
            ThumbPressedColorAlpha = 255
            ThumbShadow = False
            FrameSolid = False
            FrameOnSolid = True
            FrameInside = False
            OnChangeState = swiCloseModeChangeState
          end
        end
        object scListGroupPanel3: TscListGroupPanel
          Left = 0
          Top = 150
          Width = 249
          Height = 110
          Align = alTop
          TabOrder = 1
          Visible = False
          AutoSize = True
          RowCount = 2
          RowLineMargin = 20
          RowHeight = 40
          GroupColor = clWindow
          GroupColorAlpha = 255
          Color = clBtnFace
          Caption = 'Login information'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBtnText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderHeight = 30
          HeaderMargin = 10
          HeaderAutoColor = True
          TransparentBackground = False
          object scLabel12: TscLabel
            Left = 19
            Top = 46
            Width = 66
            Height = 17
            TabOrder = 1
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'User name:'
          end
          object scLabel17: TscLabel
            Left = 19
            Top = 85
            Width = 59
            Height = 17
            TabOrder = 3
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'Password:'
          end
          object scPasswordEdit1: TscPasswordEdit
            Left = 86
            Top = 81
            Width = 120
            Height = 21
            Cursor = crIBeam
            TabOrder = 2
            FrameColor = clBtnShadow
            FrameActiveColor = clHighlight
            Transparent = True
            BorderKind = sccebNone
            ContentMarginLeft = 0
            ContentMarginRight = 0
            ContentMarginTop = 0
            ContentMarginBottom = 0
            PromptTextColor = clNone
            PasswordCharImageIndex = -1
            PasswordCharSelectedImageIndex = -1
            WallpaperIndex = -1
            CustomBackgroundImageNormalIndex = -1
            CustomBackgroundImageHotIndex = -1
            CustomBackgroundImageDisabledIndex = -1
            UseFontColorToStyleColor = True
            Text = 'password'
          end
          object scEdit2: TscEdit
            Left = 88
            Top = 43
            Width = 108
            Height = 21
            UseFontColorToStyleColor = True
            ContentMarginLeft = 0
            ContentMarginRight = 0
            ContentMarginTop = 0
            ContentMarginBottom = 0
            CustomBackgroundImageNormalIndex = -1
            CustomBackgroundImageHotIndex = -1
            CustomBackgroundImageDisabledIndex = -1
            PromptTextColor = clNone
            WallpaperIndex = -1
            LeftButton.ComboButton = False
            LeftButton.Enabled = True
            LeftButton.Visible = False
            LeftButton.ShowHint = False
            LeftButton.ShowEllipses = False
            LeftButton.StyleKind = scbsPushButton
            LeftButton.Width = 18
            LeftButton.ImageIndex = -1
            LeftButton.ImageHotIndex = -1
            LeftButton.ImagePressedIndex = -1
            LeftButton.RepeatClick = False
            LeftButton.RepeatClickInterval = 200
            LeftButton.CustomImageNormalIndex = -1
            LeftButton.CustomImageHotIndex = -1
            LeftButton.CustomImagePressedIndex = -1
            LeftButton.CustomImageDisabledIndex = -1
            RightButton.ComboButton = False
            RightButton.Enabled = True
            RightButton.Visible = False
            RightButton.ShowHint = False
            RightButton.ShowEllipses = False
            RightButton.StyleKind = scbsPushButton
            RightButton.Width = 18
            RightButton.ImageIndex = -1
            RightButton.ImageHotIndex = -1
            RightButton.ImagePressedIndex = -1
            RightButton.RepeatClick = False
            RightButton.RepeatClickInterval = 200
            RightButton.CustomImageNormalIndex = -1
            RightButton.CustomImageHotIndex = -1
            RightButton.CustomImagePressedIndex = -1
            RightButton.CustomImageDisabledIndex = -1
            Transparent = True
            BorderKind = scebFrame
            FrameColor = clBtnShadow
            FrameActiveColor = clHighlight
            Text = 'Admin'
            BorderStyle = bsNone
            TabOrder = 0
          end
        end
        object scListGroupPanel4: TscListGroupPanel
          Left = 0
          Top = 260
          Width = 249
          Height = 190
          Align = alTop
          TabOrder = 2
          AutoSize = True
          RowCount = 4
          RowLineMargin = 20
          RowHeight = 40
          GroupColor = clWindow
          GroupColorAlpha = 255
          Color = clBtnFace
          Caption = 'Browser Options'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBtnText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderHeight = 30
          HeaderMargin = 10
          HeaderAutoColor = True
          TransparentBackground = False
          object scLabel18: TscLabel
            Left = 20
            Top = 47
            Width = 30
            Height = 17
            TabOrder = 1
            DragForm = False
            GlowEffect.Enabled = False
            GlowEffect.Color = clBtnShadow
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            AutoSize = True
            UseFontColorToStyleColor = True
            Caption = 'Skin :'
          end
          object cbxMaximize: TscCheckBox
            Left = 20
            Top = 77
            Width = 141
            Height = 29
            TabOrder = 2
            TabStop = True
            OnClick = cbxMaximizeClick
            CustomCheckedImageIndex = -1
            CustomCheckedImageHotIndex = -1
            CustomCheckedImagePressedIndex = -1
            CustomCheckedImageDisabledIndex = -1
            CustomUnCheckedImageIndex = -1
            CustomUnCheckedImageHotIndex = -1
            CustomUnCheckedImagePressedIndex = -1
            CustomUnCheckedImageDisabledIndex = -1
            CustomGrayedImageIndex = -1
            CustomGrayedImageHotIndex = -1
            CustomGrayedImagePressedIndex = -1
            CustomGrayedImageDisabledIndex = -1
            UseFontColorToStyleColor = True
            Animation = False
            Caption = 'Maximize Button'
            CanFocused = True
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            Checked = True
            State = cbChecked
            ShowFocusRect = True
          end
          object cbxSizeBox: TscCheckBox
            Left = 21
            Top = 118
            Width = 140
            Height = 24
            TabOrder = 3
            TabStop = True
            OnClick = cbxSizeBoxClick
            CustomCheckedImageIndex = -1
            CustomCheckedImageHotIndex = -1
            CustomCheckedImagePressedIndex = -1
            CustomCheckedImageDisabledIndex = -1
            CustomUnCheckedImageIndex = -1
            CustomUnCheckedImageHotIndex = -1
            CustomUnCheckedImagePressedIndex = -1
            CustomUnCheckedImageDisabledIndex = -1
            CustomGrayedImageIndex = -1
            CustomGrayedImageHotIndex = -1
            CustomGrayedImagePressedIndex = -1
            CustomGrayedImageDisabledIndex = -1
            UseFontColorToStyleColor = True
            Animation = False
            Caption = 'Sizable'
            CanFocused = True
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            Checked = True
            State = cbChecked
            ShowFocusRect = True
          end
          object cbxSkin: TscComboBox
            Left = 64
            Top = 40
            Width = 153
            Height = 25
            Style = csDropDownList
            ItemIndex = -1
            WordBreak = False
            SelectionStyle = scstStyled
            SelectionColor = clNone
            SelectionTextColor = clHighlightText
            ImageIndex = -1
            ItemHeight = 19
            TabOrder = 0
            StyleKind = scscbPushButton
            ShowFocusRect = True
            OnChange = cbxSkinChange
          end
          object cbxStayOnTop: TscCheckBox
            Left = 21
            Top = 158
            Width = 140
            Height = 24
            TabOrder = 4
            TabStop = True
            OnClick = cbxStayOnTopClick
            CustomCheckedImageIndex = -1
            CustomCheckedImageHotIndex = -1
            CustomCheckedImagePressedIndex = -1
            CustomCheckedImageDisabledIndex = -1
            CustomUnCheckedImageIndex = -1
            CustomUnCheckedImageHotIndex = -1
            CustomUnCheckedImagePressedIndex = -1
            CustomUnCheckedImageDisabledIndex = -1
            CustomGrayedImageIndex = -1
            CustomGrayedImageHotIndex = -1
            CustomGrayedImagePressedIndex = -1
            CustomGrayedImageDisabledIndex = -1
            UseFontColorToStyleColor = True
            Animation = False
            Caption = 'Form StayOnTop'
            CanFocused = True
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            Checked = False
            ShowFocusRect = True
          end
        end
      end
      object btnSaveConfig: TscGPGlyphButton
        Left = 184
        Top = 6
        Width = 35
        Height = 35
        TabOrder = 0
        TabStop = True
        OnClick = btnSaveConfigClick
        Animation = False
        Caption = 'btnSaveConfig'
        CanFocused = True
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clBtnText
        Options.HotColor = clBtnText
        Options.PressedColor = clBtnText
        Options.FocusedColor = clBtnFace
        Options.DisabledColor = clBtnText
        Options.NormalColorAlpha = 10
        Options.HotColorAlpha = 20
        Options.PressedColorAlpha = 30
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.FrameNormalColor = clBtnText
        Options.FrameHotColor = clBtnText
        Options.FramePressedColor = clBtnText
        Options.FrameFocusedColor = clHighlight
        Options.FrameDisabledColor = clBtnText
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ArrowSize = 9
        Options.StyleColors = True
        GlyphOptions.NormalColor = clBtnText
        GlyphOptions.HotColor = clBtnText
        GlyphOptions.PressedColor = clBtnText
        GlyphOptions.FocusedColor = clBtnText
        GlyphOptions.DisabledColor = clBtnText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkFileSave
        GlyphOptions.Thickness = 2
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
    end
    object SV: TscSplitView
      Left = 1
      Top = 35
      Width = 200
      Height = 538
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      CustomImageIndex = -1
      StyleKind = scpsPanel
      ShowCaption = False
      BorderStyle = scpbsNone
      WallpaperIndex = -1
      LightBorderColor = clBtnHighlight
      ShadowBorderColor = clBtnShadow
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = 8538404
      StorePaintBuffer = True
      AnimationStep = 25
      CompactWidth = 0
      CompactHeight = 20
      GripSize = 0
      Opened = True
      OpenedWidth = 200
      OpenedHeight = 50
      OpenedMinWidth = 0
      OpenedMaxWidth = 0
      OpenedMinHeight = 0
      OpenedMaxHeight = 0
      ParentBackground = False
      ParentColor = False
      Placement = scsvpLeft
      HideControls = False
      Animation = True
      DisplayMode = scsvmOverlay
      object btnExit: TscButton
        Left = 0
        Top = 488
        Width = 200
        Height = 50
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = CloseButtonClick
        Animation = False
        Caption = 'Exit'
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 11
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = clRed
        ColorOptions.PressedColor = 191
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        WordWrap = False
      end
      object btnOption: TscButton
        Left = 0
        Top = 438
        Width = 200
        Height = 50
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = OptionClick
        Animation = False
        Caption = 'Options'
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 6
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        WordWrap = False
      end
      object btnProcImage: TscButton
        Left = 0
        Top = 50
        Width = 200
        Height = 50
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Action = actProcImage
        Animation = False
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 4
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 1
        AllowAllUp = False
        WordWrap = False
      end
      object btnHome: TscButton
        Left = 0
        Top = 0
        Width = 200
        Height = 50
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Action = actHome
        Animation = False
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 1
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 1
        AllowAllUp = False
        WordWrap = False
      end
      object btnRegObject: TscButton
        Left = 0
        Top = 200
        Width = 200
        Height = 50
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Action = actRegObject
        Animation = False
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 7
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 1
        AllowAllUp = False
        WordWrap = False
      end
      object btnEvalAlgorithm: TscButton
        Left = 0
        Top = 150
        Width = 200
        Height = 50
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Action = actEvalAlgorithm
        Animation = False
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 18
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 1
        AllowAllUp = False
        WordWrap = False
      end
      object btnServerJob: TscButton
        Left = 0
        Top = 100
        Width = 200
        Height = 50
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Action = actServerJob
        Animation = False
        CanFocused = False
        CustomDropDown = False
        Margin = 0
        Spacing = 10
        Layout = blGlyphLeft
        Images = imlIcons
        ImageIndex = 5
        ImageMargin = 50
        TransparentBackground = False
        ColorOptions.NormalColor = 8538404
        ColorOptions.HotColor = 7159583
        ColorOptions.PressedColor = 5648664
        ColorOptions.FocusedColor = 657930
        ColorOptions.DisabledColor = 657930
        ColorOptions.FrameNormalColor = clNone
        ColorOptions.FrameHotColor = clNone
        ColorOptions.FramePressedColor = clNone
        ColorOptions.FrameFocusedColor = clNone
        ColorOptions.FrameDisabledColor = clBtnShadow
        ColorOptions.FrameWidth = 0
        ColorOptions.FontNormalColor = clWhite
        ColorOptions.FontHotColor = clWhite
        ColorOptions.FontPressedColor = clWhite
        ColorOptions.FontFocusedColor = clWhite
        ColorOptions.FontDisabledColor = clGray
        ColorOptions.TitleFontNormalColor = clBtnText
        ColorOptions.TitleFontHotColor = clBtnText
        ColorOptions.TitleFontPressedColor = clBtnText
        ColorOptions.TitleFontFocusedColor = clBtnText
        ColorOptions.TitleFontDisabledColor = clBtnShadow
        ColorOptions.StyleColors = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsColorButton
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 1
        AllowAllUp = False
        WordWrap = False
      end
    end
  end
  object ActionList1: TActionList
    Images = imlIcons
    Left = 48
    Top = 412
    object actHome: TAction
      Caption = 'Home'
      ImageIndex = 1
      OnExecute = actHomeExecute
    end
    object actProcImage: TAction
      Caption = 'Process Image'
      ImageIndex = 4
      OnExecute = actProcImageExecute
    end
    object actServerJob: TAction
      Caption = 'Server Job'
      ImageIndex = 5
      OnExecute = actServerJobExecute
    end
    object actEvalAlgorithm: TAction
      Caption = 'Eval Algorithm'
      ImageIndex = 18
      OnExecute = actEvalAlgorithmExecute
    end
    object actRegObject: TAction
      Caption = 'Register Objects'
      ImageIndex = 7
      OnExecute = actRegObjectExecute
    end
  end
  object imlIcons: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 96
    Top = 412
    Bitmap = {
      494C010114008000640120002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0E5959
      59599B9B9B9BCBCBCBCBECECECECFBFBFBFBFBFBFBFBECECECECCBCBCBCB9B9B
      9B9B595959590E0E0E0E00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E2E9B9B
      9B9BADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
      ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
      ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
      ADAD9B9B9B9B2D2D2D2D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001717171765656565A3A3
      A3A3CFCFCFCFE8E8E8E8F0F0F0F0E6E6E6E6CBCBCBCB9E9E9E9E5D5D5D5D1010
      1010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010104040404000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040404000000000000000000000000000000000000
      000000000000000000000000000000000000252525259C9C9C9CF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F59C9C9C9C252525250000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B1BF1F1F1F1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1F11B1B1B1B000000000000000000000000000000000000
      00000000000000000000000000002D2D2D2DAAAAAAAAFBFBFBFBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7F79D9D9D9D2222222200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000323232326969
      69696B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
      6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
      6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6C6C
      6C6C666666663636363600000000000000000000000000000000000000000000
      00000000000000000000090909098A8A8A8AFAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A09090909000000000000
      0000000000000000000000000000000000000000000063636363FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF63636363000000000000000000000000000000000000
      000000000000080808088F8F8F8FFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8F87C7C7C7C030303030000000000000000000000000000
      000000000000000000000000000000000000131313138B8B8B8BF3F3F3F3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F495959595000000000000000000000000000000000000
      00000000000023232323D2D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2232323230000
      000000000000000000000000000000000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFD2D2D2D26D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
      6D6D6D6D6D6D6D6D6D6D89898989FFFFFFFFFFFFFFFF898989896D6D6D6D6D6D
      6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6DD2D2
      D2D2FFFFFFFFFFFFFFFF6B6B6B6B000000000000000000000000000000000000
      00001A1A1A1ACDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBBB1010101000000000000000000000
      000000000000000000000000000000000000B3B3B3B3FFFFFFFFFFFFFFFFFCFC
      FCFCFFFFFFFFFFFFFFFFFDFDFDFDFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFCFCFCFCFCFFFFFFFFFFFFFFFFFCFCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFCFC
      FCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFDFDFDFDFFFFFFFFFFFF
      FFFFFCFCFCFCFFFFFFFFFFFFFFFF656565650000000000000000000000000000
      00002F2F2F2FE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92F2F
      2F2F00000000000000000000000000000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B000000000000000000000000000000001B1B
      1B1BDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCCC0F0F0F0F000000000000
      000000000000000000000000000000000000F2F2F2F2FDFDFDFDFBFBFBFBFEFE
      FEFECCCCCCCC9A9A9A9AFBFBFBFBFEFEFEFEEBEBEBEB8A8A8A8AE5E5E5E5FEFE
      FEFEFCFCFCFC9F9F9F9FBEBEBEBEFEFEFEFEFEFEFEFEBCBCBCBC9B9B9B9BFCFC
      FCFCFEFEFEFEE9E9E9E987878787EBEBEBEBFEFEFEFEFBFBFBFBA0A0A0A0C6C6
      C6C6FEFEFEFEFBFBFBFBFCFCFCFCE1E1E1E10000000000000000000000002323
      2323E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9E923232323000000000000000000000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000000000000000000009090909CECE
      CECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9B9030303030000
      000000000000000000000000000000000000F8F8F8F8FDFDFDFDFCFCFCFCFEFE
      FEFE9F9F9F9F50505050FAFAFAFAFFFFFFFFDADADADA33333333D6D6D6D6FFFF
      FFFFFBFBFBFB5959595989898989FFFFFFFFFFFFFFFF8787878754545454FBFB
      FBFBFFFFFFFFD8D8D8D835353535D6D6D6D6FFFFFFFFFAFAFAFA494949499D9D
      9D9DFEFEFEFEFCFCFCFCFDFDFDFDFEFEFEFE000000000000000009090909D2D2
      D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD2D2D2D2090909090000000000000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000000000000000000093939393FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777770000
      000000000000000000000000000000000000DADADADAFFFFFFFFFDFDFDFDFDFD
      FDFDFFFFFFFFFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFCFCFCFCFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFDFEFEFEFEFFFFFFFFFFFFFFFFF9F9F9F9FEFE
      FEFEFEFEFEFEFBFBFBFBFFFFFFFFA6A6A6A600000000000000008A8A8A8AFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4B4FFFFFFFFFFFF
      FFFFFFFFFFFF8A8A8A8A0000000000000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B000000000000000032323232FDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F61D1D
      1D1D000000000000000000000000000000003D3D3D3DCACACACAFFFFFFFFFFFF
      FFFFFEFEFEFEFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFF
      FFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFFFFFFFEFE
      FEFEFFFFFFFFFFFFFFFFD4D4D4D4151515150000000025252525FAFAFAFAFFFF
      FFFFFFFFFFFFB0B0B0B03C3C3C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1E1E1EAFAFAFAFFFFF
      FFFFFFFFFFFFFAFAFAFA2424242400000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B0000000000000000B1B1B1B1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9595
      95950000000000000000000000000000000000000000171717177F7F7F7FE0E0
      E0E0FDFDFDFDFCFCFCFCFFFFFFFFFFFFFFFFFEFEFEFEFDFDFDFDFEFEFEFEFFFF
      FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFDFDFDFDFDFDFDFDFEFE
      FEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFEFDFDFDFDFCFCFCFCFCFC
      FCFCE5E5E5E5848484841111111100000000000000009C9C9C9CFFFFFFFFFFFF
      FFFFF0F0F0F01717171700000000AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D8D0000000016161616F0F0
      F0F0FFFFFFFFFFFFFFFF9C9C9C9C00000000000000006B6B6B6BFFFFFFFFFFFF
      FFFFFAFAFAFAEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
      EFEFEFEFEFEFEFEFEFEFF2F2F2F2FFFFFFFFFFFFFFFFF2F2F2F2EFEFEFEFEFEF
      EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFAFA
      FAFAFFFFFFFFFFFFFFFF6B6B6B6B000000001D1D1D1DFDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
      F3F30B0B0B0B000000000000000000000000050505050000000000000000B6B6
      B6B6FFFFFFFFFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFBEBEBEBE0000000000000000020202020E0E0E0EF5F5F5F5FFFFFFFFFFFF
      FFFF7E7E7E7E00000000000000000202020270707070E9E9E9E9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDEDEDEDE5D5D5D5D0000000000000000000000007D7D
      7D7DFFFFFFFFFFFFFFFFF5F5F5F50E0E0E0E000000006B6B6B6BFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6B6B6B6B000000006F6F6F6FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF53535353000000000000000000000000040404040000000017171717DEDE
      DEDEFEFEFEFEFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFFFFFFFFABABABAB3C3C3C3C3E3E
      3E3E3D3D3D3D3D3D3D3D3D3D3D3D3E3E3E3E3A3A3A3A55555555EEEEEEEEFEFE
      FEFEE0E0E0E01A1A1A1A000000000202020259595959FFFFFFFFFFFFFFFFFAFA
      FAFA1515151500000000000000000000000000000000070707075D5D5D5DCECE
      CECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C5C55050505003030303000000000000000000000000000000001414
      1414FAFAFAFAFFFFFFFFFFFFFFFF59595959000000006B6B6B6BFFFFFFFFFFFF
      FFFFDBDBDBDB8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D
      8D8D8D8D8D8D8D8D8D8DA2A2A2A2FFFFFFFFFFFFFFFFA2A2A2A28D8D8D8D8D8D
      8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8DDBDB
      DBDBFFFFFFFFFFFFFFFF6B6B6B6B00000000AEAEAEAEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF92929292000000000000000000000000030303030000000013131313D8D8
      D8D8FFFFFFFFFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9FFFFFFFF61616161000000000000
      0000000000000000000000000000000000000000000003030303D2D2D2D2FFFF
      FFFFDBDBDBDB1616161600000000010101019B9B9B9BFFFFFFFFFFFFFFFFBABA
      BABA000000000000000000000000000000000000000000000000000000000101
      010149494949E6E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8D83F3F
      3F3F000000000000000000000000000000000000000000000000000000000000
      0000B9B9B9B9FFFFFFFFFFFFFFFF9B9B9B9B000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000DBDBDBDBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFBFBFBF000000000000000000000000040404040000000013131313D8D8
      D8D8FFFFFFFFFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAFFFFFFFF6B6B6B6B040404040707
      0707040404040404040404040404050505050404040410101010D5D5D5D5FFFF
      FFFFDBDBDBDB161616160000000002020202CBCBCBCBFFFFFFFFFFFFFFFF7C7C
      7C7C000000000000000000000000000000000000000000000000000000000000
      0000000000007C7C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D5D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B7BFFFFFFFFFFFFFFFFCBCBCBCB000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000F5F5F5F5FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD9D9D9D9000000000000000000000000040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9FFFFFFFF65656565000000000000
      0000000000000000000000000000000000000000000005050505D7D7D7D7FFFF
      FFFFDCDCDCDC171717170000000002020202EBEBEBEBFFFFFFFFFFFFFFFF5353
      5353000000000000000000000000000000000000000000000000000000000000
      0000000000008D8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696969690000
      0000000000000000000000000000000000000000000000000000000000000000
      000052525252FFFFFFFFFFFFFFFFEBEBEBEB000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000FDFDFDFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB8B8B8B8808080808080808080808080808080808080
      8080808080808080808080808080808080808080808080808080808080808080
      808071717171000000000000000000000000040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFFFFFFFFBEBEBEBE6C6C6C6C7070
      7070707070707070707070707070707070706B6B6B6B8A8A8A8AFBFBFBFBFFFF
      FFFFDEDEDEDE171717170000000002020202FBFBFBFBFFFFFFFFFFFFFFFF3F3F
      3F3F000000000000000000000000000000000000000000000000000000000000
      00003D3D3D3DFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F62828
      2828000000000000000000000000000000000000000000000000000000000000
      00003C3C3C3CFFFFFFFFFFFFFFFFFBFBFBFB000000006B6B6B6BFFFFFFFFFFFF
      FFFFB0B0B0B00000000000000000000000000000000000000000000000000000
      0000000000000000000031313131FFFFFFFFFFFFFFFF31313131000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0B0FFFFFFFFFFFFFFFF6B6B6B6B00000000F5F5F5F5FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFDEDEDEDE171717170000000002020202FBFBFBFBFFFFFFFFFFFFFFFF3D3D
      3D3D000000000000000000000000000000000000000000000000000000000000
      0000B4B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898
      9898000000000000000000000000000000000000000000000000000000000000
      00003C3C3C3CFFFFFFFFFFFFFFFFFBFBFBFB040404047D7D7D7DFFFFFFFFFFFF
      FFFFBABABABA2121212121212121212121212121212121212121212121212121
      212121212121212121214B4B4B4BFFFFFFFFFFFFFFFF4B4B4B4B212121212121
      212121212121212121212121212121212121212121212121212121212121BABA
      BABAFFFFFFFFFFFFFFFF7D7D7D7D04040404DBDBDBDBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFFFFFFFDFDFDFDFAFAFAFAFAFA
      FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBFBFBFBFCFCFCFCFFFF
      FFFFDDDDDDDD171717170000000002020202EBEBEBEBFFFFFFFFFFFFFFFF5151
      5151000000000000000000000000000000000000000000000000000000007676
      7676FCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8F85A5A5A5A0000000000000000000000000000000000000000000000000000
      000050505050FFFFFFFFFFFFFFFFEBEBEBEBC6C6C6C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6C6AEAEAEAEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF727272720000000000000000393939397F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFDEDEDEDE171717170000000002020202CBCBCBCBFFFFFFFFFFFFFFFF7A7A
      7A7A00000000000000000000000000000000000000000000000000000000B7B7
      B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF989898980000000000000000000000000000000000000000000000000000
      000078787878FFFFFFFFFFFFFFFFCBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6E6EFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFDEDEDEDE1717171700000000020202029B9B9B9BFFFFFFFFFFFFFFFFB8B8
      B8B8000000000000000000000000000000000000000000000000000000009595
      9595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF727272720000000000000000000000000000000000000000000000000000
      0000B6B6B6B6FFFFFFFFFFFFFFFF9B9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D1D1D1DFDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFDEDEDEDE17171717000000000202020259595959FFFFFFFFFFFFFFFFFAFA
      FAFA151515150000000000000000000000000000000000000000000000006C6C
      6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3E3E3E3E0000000000000000000000000000000000000000000000001414
      1414F9F9F9F9FFFFFFFFFFFFFFFF59595959FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000B1B1B1B1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEAE040404040000000014141414D9D9
      D9D9FFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFF
      FFFFDEDEDEDE1717171700000000020202020E0E0E0EF5F5F5F5FFFFFFFFFFFF
      FFFF7C7C7C7C0000000000000000000000000000000000000000000000005E5E
      5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3A3A3A3A0000000000000000000000000000000000000000000000007B7B
      7B7BFFFFFFFFFFFFFFFFF5F5F5F50E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000032323232FDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F030303030000000013131313D8D8
      D8D8FFFFFFFFFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFFFF
      FFFFDDDDDDDD151515160000000001010101000000009C9C9C9CFFFFFFFFFFFF
      FFFFEFEFEFEF1616161600000000000000000000000000000000000000002020
      2020FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
      EBEB09090909000000000000000000000000000000000000000016161616EEEE
      EEEEFFFFFFFFFFFFFFFF9C9C9C9C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000093939393FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFD1D1D1D1D040404040000000014141414D8D8
      D8D8FFFFFFFFFDFDFDFDFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFDFDFDFFFF
      FFFFDEDEDEDE1717171700000000020202020000000025252525FAFAFAFAFFFF
      FFFFFFFFFFFFAEAEAEAE01010101000000000000000000000000000000000000
      000088888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE5B5B
      5B5B000000000000000000000000000000000000000000000000ADADADADFFFF
      FFFFFFFFFFFFFAFAFAFA2525252500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000009090909CECE
      CECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB1B1B1B10000000003030303000000000E0E0E0ED4D4
      D4D4FCFCFCFCFAFAFAFAFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFEFEFEFEFFFF
      FFFFFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFE
      FEFEFFFFFFFFFEFEFEFEFDFDFDFDFEFEFEFEFFFFFFFFFEFEFEFEFAFAFAFAFCFC
      FCFCD7D7D7D701010110000000000101010100000000000000008A8A8A8AFFFF
      FFFFFFFFFFFFFFFFFFFF7E7E7E7E000000000000000000000000000000000000
      00000000000057575757A2A2A2A2DFDFDFDFFFFFFFFFE5E5E5E5545454540000
      000000000000000000000000000000000000000000007C7C7C7CFFFFFFFFFFFF
      FFFFFFFFFFFF8A8A8A8A0000000000000000FCFCFCFCFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC0000000000000000000000001B1B
      1B1BDCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFD32323232000000000101010100000001000000009191
      9191FFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFDFDFDFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFBFBFBFBFBFBFBFBFFFFFFFFFFFF
      FFFF97979797000000000000000100000000000000000000000009090909D2D2
      D2D2FFFFFFFFFFFFFFFFFFFFFFFF7E7E7E7E0101010100000000000000000000
      0000000000000000000000000000030303031E1E1E1E03030303000000000000
      0000000000000000000000000000000000007C7C7C7CFFFFFFFFFFFFFFFFFFFF
      FFFFD2D2D2D20909090900000000000000007A7A7A7ACCCCCCCCCDCDCDCDCDCD
      CDCDCDCDCDCDCDCDCDCDCDCDCDCDCECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFECECECECECDCDCDCDCDCDCDCDCDCD
      CDCDCDCDCDCDCDCDCDCDCCCCCCCC7A7A7A7A0000000000000000000000000000
      00001A1A1A1ACCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9393939300000000000000000000000000000000000000000D0D
      0D0D9E9E9E9EEDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFECECECECF9F9F9F9FFFF
      FFFFFEFEFEFEF4F4F4F4EFEFEFEFF1F1F1F1F0F0F0F0EFEFEFEFF3F3F3F3FEFE
      FEFEFFFFFFFFFBFBFBFBEBEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAEA9C9C
      9C9C0F0F0F0F0000000000000000000000000000000000000000000000002323
      2323E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFAEAEAEAE16161616000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000016161616ADADADADFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9E9232323230000000000000000000000000000000000000000000000000000
      000000000000000000000000000047474747FFFFFFFFFFFFFFFFC4C4C4C45E5E
      5E5E4040404068686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767674040
      40405E5E5E5EC4C4C4C4FFFFFFFFFFFFFFFF4747474700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808088E8E8E8EFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCECECECE0909090900000000000000000000000000000000000000000000
      0000000000001C1C1C1CA3A3A3A3BDBDBDBD838383831A1A1A1ABDBDBDBDFFFF
      FFFFF2F2F2F2434343430E0E0E0E15151515141414140E0E0E0E3E3E3E3EEFEF
      EFEFFFFFFFFFC9C9C9C91717171785858585BEBEBEBEA4A4A4A4151515150000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F2FE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF7C7C7C7C1515
      1515000000000000000000000000000000000000000000000000000000000000
      0000141414147C7C7C7CEEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92F2F
      2F2F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000082828282FFFFFFFFFAFAFAFA0C0C0C0C0000
      0000000000007C7C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C7C0000
      0000000000000C0C0C0CF9F9F9F9FFFFFFFF8181818100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C2C2C2CA9A9A9A9FAFAFAFAFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF72727272000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD
      DDDD1B1B1B1B0000000000000000000000000000000000000000000000000101
      0101010101010000000000000000060606060000000000000000B3B3B3B3FDFD
      FDFDF5F5F5F5939393937676767679797979797979797575757593939393F6F6
      F6F6FDFDFDFDBDBDBDBD00000000000000000606060600000000000000000101
      0101010101010000000000000000000000000000000000000000000000000000
      00000000000023232323D2D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
      FAFAB7B7B7B77A7A7A7A515151513D3D3D3D3D3D3D3D5151515179797979B7B7
      B7B7FAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2232323230000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078787878FFFFFFFFFEFEFEFE2D2D2D2D0000
      000061616161FCFCFCFCFFFFFFFFD1D1D1D1D2D2D2D2FFFFFFFFFCFCFCFC6060
      6060000000002D2D2D2DFEFEFEFEFFFFFFFF7777777700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001616161664646464A2A2
      A2A2CECECECEE7E7E7E76B6B6B6B000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDCD1A1A
      1A1A000000000000000000000000000000000000000000000000000000000000
      000000000000010101010000000000000000030303030000000084848484FFFF
      FFFFFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFCFFFFFFFF8A8A8A8A00000000020202020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909098A8A8A8AFAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A09090909000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000029292929FCFCFCFCFFFFFFFFF6F6F6F6DBDB
      DBDBFFFFFFFFFFFFFFFFF1F1F1F12B2B2B2B2C2C2C2CF1F1F1F1FFFFFFFFFFFF
      FFFFDBDBDBDBF7F7F7F7FFFFFFFFFCFCFCFC2828282800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC8F8F8F8F080808080000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010101010101010000000019191919C2C2
      C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC2C2C2C21717171700000000010101010101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252525259C9C9C9CF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F59C9C9C9C252525250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071717171FEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFE8E8E8E839393939000000000000000039393939E8E8E8E8FFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE717171710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000072727272FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFBAAAAAAAA2D2D2D2D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A0A535353536B6B6B6B686868686969696969696969696969696A6A6A6A5454
      54540A0A0A0A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0E5959
      59599B9B9B9BCBCBCBCBECECECECFBFBFBFBFBFBFBFBECECECECCBCBCBCB9B9B
      9B9B595959590E0E0E0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003838383894949494A8A8
      A8A8787878781212121200000000000000000000000000000000121212127878
      7878A8A8A8A89494949438383838000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B6BE8E8E8E8CFCF
      CFCFA3A3A3A36565656517171717000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202020200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000282828287A7A7A7A151515150000
      000000000000000000000A0A0A0AD4D4D4D4D4D4D4D40A0A0A0A000000000000
      00000000000008080808737373733D3D3D3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303555555559F9F9F9FB7B7B7B7A1A1
      A1A1595959590505050500000000000000000000000000000000000000000000
      0000000000000000000003030303B2B2B2B2F5F5F5F569696969000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000777777771515
      1515000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B7B7FFFFFFFFDADADADA2121
      212100000000000000002B2B2B2BFFFFFFFFFFFFFFFF2B2B2B2B000000000000
      00000E0E0E0EBEBEBEBEFFFFFFFFE4E4E4E40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C1CCBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD0D0D0D021212121000000000000000000000000000000000000
      0000000000000000000033333333FFFFFFFFFFFFFFFFD7D7D7D7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7DFDF
      DFDF303030300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5C5CFCFCFCFCFFFFFFFFE5E5
      E5E52D2D2D2D000000002C2C2C2CFFFFFFFFFFFFFFFF2C2C2C2C000000001616
      1616CDCDCDCDFFFFFFFFFFFFFFFF878787870000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A0AD5D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBDBDBDB0E0E0E0E0000000000000000000000000000
      0000000000000000000058585858FFFFFFFFFFFFFFFFC0C0C0C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7FFFF
      FFFFF5F5F5F55858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000054545454F8F8F8F8FFFF
      FFFFEFEFEFEF3D3D3D3D2C2C2C2CFFFFFFFFFFFFFFFF2C2C2C2C20202020DADA
      DADAFFFFFFFFFFFFFFFF7B7B7B7B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF818181810000000000000000000000000000
      000000000000000000007A7A7A7AFFFFFFFFFFFFFFFF9E9E9E9E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7FFFF
      FFFFFFFFFFFFFEFEFEFE88888888030303030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424242F1F1
      F1F1FFFFFFFFF6F6F6F67A7A7A7AFFFFFFFFFFFFFFFF58585858E5E5E5E5FFFF
      FFFFFCFCFCFC6767676700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D70000000000000000000000000000
      000000000000000000009D9D9D9DFFFFFFFFFFFFFFFF7B7B7B7B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6B61010101000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      3232E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAFFFFFFFFF8F8
      F8F8545454540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0000000000000000000000000000
      00000000000000000000C0C0C0C0FFFFFFFFFFFFFFFF58585858000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADADA2A2A2A2A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2A2A2A72727272787878787878787878787878787878787878
      78789D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7
      B7B77878787878787878787878787878787878787878727272722A2A2A2A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026262626F3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF0000000000000000000000000000
      00000000000000000000E3E3E3E3FFFFFFFFFFFFFFFF35353535000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7B7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F14F4F4F4F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F3F3F3FF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F93F3F
      3F3F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A2A2A2AA5A5
      A5A5FCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2B20000000000000000000000000000
      00000000000008080808FDFDFDFDFFFFFFFFFFFFFFFF12121212000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A0A6868
      6868ABABABABBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFEDEDEDEDFFFF
      FFFFFFFFFFFFB2B2B2B2BEBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDC3C3
      C3C3BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFABAB
      ABAB676767670A0A0A0A00000000000000000000000000000000000000000000
      0000A7A7A7A7FFFFFFFFF3F3F3F3DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEF3F3F3F3FFFFFFFFA7A7
      A7A7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E2EAAAAAAAAFDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE3F3F3F3F0000000000000000000000000000
      00000000000029292929FFFFFFFFFFFFFFFFEFEFEFEF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D2D2D2DDDDDDDDDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9E9E9E9E0404040491919191FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDDDDDDDD2D2D2D2D000000000000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033333333AFAFAFAFFEFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F3F3F3AFAFAFAFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7C7C7C7C000000000000000000000000000000000000
      0000000000004C4C4C4CFFFFFFFFFFFFFFFFCCCCCCCC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000015151515E6E6E6E6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9E9E9E9E000000000000000060606060F7F7F7F7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE6E6E6E6151515150000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000001414
      1414545454546A6A6A6A52525252111111110000000000000000000000000000
      000038383838B4B4B4B4FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1F18585858514141414000000004C4C4C4CD2D2D2D2FFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7D75454545400000000000000000000000000000000000000000000
      0000000000006F6F6F6FFFFFFFFFFFFFFFFFA9A9A9A900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E8EFFFFFFFFFFFFFFFFFFFF
      FFFFCECECECE9898989897979797979797979797979797979797979797979797
      9797979797975D5D5D5D00000000000000000000000037373737969696969696
      969696969696969696969696969696969696969696969696969698989898CECE
      CECEFFFFFFFFFFFFFFFFFFFFFFFF8E8E8E8E0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000000000000505050588888888F8F8
      F8F8FFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F57F7F7F7F030303033D3D3D3DBABA
      BABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEE808080801111
      111100000000000000000000000000000000000000001E1E1E1E363636362020
      2020000000000000000000000000000000000000000000000000000000000000
      00000000000092929292FFFFFFFFFFFFFFFF8686868600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080830303030363636361717171700000000000000000000
      000000000000000000000000000000000000DFDFDFDFFFFFFFFFFFFFFFFFB5B5
      B5B5030303030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0202B5B5B5B5FFFFFFFFFFFFFFFFDFDFDFDF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B50000000000000000000000000000000001010101ABABABABFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1E1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECEC7B7B7B7B0F0F0F0F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4B4B4B4FFFFFFFFFFFFFFFFDADADADA60606060080808080000
      0000000000000000000000000000000000000000000000000000000000003030
      3030A4A4A4A4F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB878787872323
      232300000000000000000000000000000000FDFDFDFDFFFFFFFFFFFFFFFF5C5C
      5C5C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005C5C5C5CFFFFFFFFFFFFFFFFFDFDFDFD0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000005B5B5B5BFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9E9E9E9767676760C0C0C0C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDED9A9A
      9A9A505050501A1A1A1A01010101000000001616161658585858B6B6B6B6FEFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFCA7A7A7A7232323230000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000C3C3C3C3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
      E6E6717171710A0A0A0A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFAF8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2E2E2E20000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000F5F5F5F5FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F10808
      0808000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F00303
      0303000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000041414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000CACACACAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
      D8D85F5F5F5F0505050500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      565600000000000000000000000000000000353535354A4A4A4A050505050000
      0000000000000000000001010101414141414141414101010101000000000000
      000000000000050505054A4A4A4A353535350000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B50000000000000000000000000000000068686868FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDEDEDEDE67676767070707070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      565600000000000000000000000068686868FFFFFFFFFFFFFFFFB6B6B6B60000
      000000000000000000008F8F8F8FFFFFFFFFFFFFFFFF8F8F8F8F000000000000
      000000000000B6B6B6B6FFFFFFFFFFFFFFFF6969696900000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B50000000000000000000000000000000004040404BDBDBDBDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3E36E6E6E6E0A0A0A0A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000C3C3C3C3FFFFFFFFFFFFFFFFFFFFFFFF1111
      11110000000000000000E9E9E9E9FFFFFFFFFFFFFFFFE9E9E9E9000000000000
      000011111111FFFFFFFFFFFFFFFFFFFFFFFFC3C3C3C300000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B500000000000000000000000000000000000000000B0B0B0BA1A1A1A1FEFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD99999999090909094F4F4F4FCACA
      CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E8767676760D0D
      0D0D00000000000000000000000000000000000000001E1E1E1E363636362020
      2020000000000000000000000000000000000000000000000000000000000000
      0000CCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      565600000000000000000000000087878787FFFFFFFFFFFFFFFFD4D4D4D40101
      01010000000000000000AEAEAEAEFFFFFFFFFFFFFFFFAEAEAEAE000000000000
      000001010101D3D3D3D3FFFFFFFFFFFFFFFF8787878700000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000002626
      26266D6D6D6D848484846B6B6B6B232323230000000000000000000000000000
      000047474747C3C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDED
      EDED7E7E7E7E10101010000000004C4C4C4CD2D2D2D2FFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7D75454545400000000000000000000000000000000000000000000
      0000EEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      565600000000000000000000000004040404656565657A7A7A7A171717170000
      000000000000000000000C0C0C0C71717171717171710C0C0C0C000000000000
      000000000000171717177A7A7A7A656565650404040400000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404040BBBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1F1ACACACACFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7C7C7C7C000000000000000000000000000000001212
      1212FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFA1A1A1A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1A1FFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000038383838B4B4B4B4FEFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE3F3F3F3F0000000000000000000000003535
      3535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFDBDBDBDB9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D
      9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D
      9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DDBDBDBDBFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031313131ACAC
      ACACFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3B30000000000000000000000005858
      5858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002A2A2A2AF4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF0000000000000000000000007B7B
      7B7BFFFFFFFFFFFFFFFFE3E3E3E3FAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FFFFFFFFFFFFFFFFFFFFFFFF5656
      5656000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565656FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0000000000000000000000009D9D
      9D9DFFFFFFFFFFFFFFFF7B7B7B7B242424249E9E9E9EF8F8F8F8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFEB9B9B9B94B4B4B4B080808080C0C0C0C424242429B9B9B9BF6F6F6F6FFFF
      FFFFFFFFFFFFF4F4F4F40000000000000000FEFEFEFEFFFFFFFFFFFFFFFF5858
      5858000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000058585858FFFFFFFFFFFFFFFFFEFEFEFE0000000000000000000000000000
      0000B5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9F9E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F9F9F9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D700000000000000002F2F2F2FEAEA
      EAEAFFFFFFFFFFFFFFFF8484848400000000000000001616161670707070BFBF
      BFBFF7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFED7D7D7D7888888882828
      28280000000000000000000000000000000000000000000000001A1A1A1A9797
      9797FAFAFAFAD9D9D9D90000000000000000E8E8E8E8FFFFFFFFFFFFFFFF9999
      9999000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000098989898FFFFFFFFFFFFFFFFE8E8E8E80000000000000000000000000000
      0000B5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDDDDDDDD191919190000000000000000000000000000000019191919DDDD
      DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000076767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF818181810000000000000000C6C6C6C6FFFF
      FFFFFFFFFFFFFFFFFFFFF9F9F9F9181818180000000000000000000000000000
      00000505050525252525353535352D2D2D2D1010101000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181818131313130000000000000000A2A2A2A2FFFFFFFFFFFFFFFFFEFE
      FEFEA0A0A0A06767676766666666666666666666666666666666666666666666
      6666666666666666666666666666666666666666666666666666666666666666
      666666666666666666666666666666666666666666666666666667676767A0A0
      A0A0FEFEFEFEFFFFFFFFFFFFFFFFA2A2A2A20000000000000000000000000000
      0000B5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF868686863F3F3F3FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE3F3F3F3F8686
      8686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
      B5B5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A0AD5D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBDBDBDB0E0E0E0E0000000000000000EEEEEEEEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027272727F6F6F6F6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F6F6282828280000000000000000000000000000
      0000212121212F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
      2F2F1717171755555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555551717
      17172F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2121
      2121000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C1CCBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD0D0D0D021212121000000000000000000000000ADADADADFFFF
      FFFFFFFFFFFFFFFFFFFFEEEEEEEE0D0D0D0D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4E4EF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F54E4E4E4E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039393939F8F8F8F8FFFFFFFFFFFFFFFFF8F8F8F8393939390000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303555555559F9F9F9FB7B7B7B7A1A1
      A1A159595959050505050000000000000000000000000000000015151515B3B3
      B3B3F8F8F8F8D4D4D4D43D3D3D3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000232323239898
      9898DBDBDBDBEFEFEFEFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
      F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
      F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EFEFEFEFDBDB
      DBDB9898989823232323000000000000000000000000000000000F0F0F0F9E9E
      9E9EF1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1F19E9E9E9E0F0F0F0F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B0B2B2B2B2B4C4C4C4C6C6C6C6C8D8D8D8DADADADADCECECECEEEEE
      EEEEDCDCDCDC1919191900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0E5959
      59599B9B9B9BCBCBCBCBECECECECFBFBFBFBFBFBFBFBECECECECCBCBCBCB9B9B
      9B9B595959590E0E0E0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101C0C0C0C0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C0C0C001010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707070726262626474747476767676788888888A8A8A8A8C9C9C9C9E9E9
      E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5656565600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252525259C9C9C9CF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F59C9C9C9C252525250000000000000000000000000000
      0000000000000000000000000000000000000000000038383838FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF38383838000000000000000000000000000000000000
      00000000000000000000090909094E4E4E4E81818181A3A3A3A3C4C4C4C4E4E4
      E4E4FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101013F3F3F3F9F9F9F9F9F9F9F9F3F3F3F3F010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909098A8A8A8AFAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A09090909000000000000
      0000000000000000000000000000000000000000000057575757FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF57575757000000000000000000000000000000000000
      00000000000066666666EBEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFFFFFFFFFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      131372727272D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D77272
      7272131313130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023232323D2D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2232323230000
      0000000000000000000000000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1F1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1F1F1F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000000
      00008E8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBF2D2D2D2DFDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101013F3F3F3FA5A5A5A5F7F7
      F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F7F7F7A5A5A5A53F3F3F3F010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F2FE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92F2F
      2F2F000000000000000000000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000005656
      5656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2E2D9D9D9D9FEFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE1E1E1E1555555550000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      000000000000000000001313131372727272D7D7D7D7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D77272727213131313000000000000
      0000000000000000000000000000000000000000000000000000000000002323
      2323E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1F1C3C3C3C3AAAAAAAAAAAAAAAAC3C3C3C3F1F1F1F1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9E9232323230000000000000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000001010101DADA
      DADAFFFFFFFFFFFFFFFFEBEBEBEB4242424200000000000000002B2B2B2BD7D7
      D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6F6818181810A0A0A0A000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000101
      01013F3F3F3FA5A5A5A5F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7A5A5A5A53F3F
      3F3F01010101000000000000000000000000000000000000000009090909D2D2
      D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEB0B0
      B0B0444444440404040400000000000000000000000000000000040404044444
      4444B0B0B0B0FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD2D2D2D20909090900000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF585858580000000000000000000000002C2C2C2CFFFF
      FFFFFFFFFFFFFFFFFFFF56565656000000000000000000000000000000002929
      2929FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAE
      AEAE212121210000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF585858580000000000000000000000001313131372727272D7D7
      D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E6E6E6E6E6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7D772727272131313130000000000000000000000008A8A8A8AFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1E1404040400000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404040E1E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8A8A8A8A00000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000051515151FFFF
      FFFFFFFFFFFFFFFFFFFF0B0B0B0B000000000000000000000000000000000000
      0000D3D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5D5444444440000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF58585858000000000000000095959595F7F7F7F7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F3F39B9B9B9B353535350000000000000000353535359B9B9B9BF3F3
      F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F7F7F7959595950000000025252525FAFAFAFAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCF16161616000000000000
      00000000000001010101262626264A4A4A4A4A4A4A4A26262626010101010000
      0000000000000000000016161616CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFA25252525000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000C7C7C7C7FFFFFFFFFFFFFFFFEFEFEFEF7070707005050505000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000001010101073737373DEDEDEDEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECECE6868
      68680E0E0E0E000000002F2F2F2F8F8F8F8F8F8F8F8F2F2F2F2F000000000E0E
      0E0E68686868CECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDEDEDEDE7373737310101010000000009C9C9C9CFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2E21717171700000000000000000303
      030368686868DCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDC6868
      686803030303000000000000000017171717E2E2E2E2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9C9C000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000C7C7C7C7FDFDFDFD9C9C9C9C161616160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000030303035151
      5151BFBFBFBFFFFFFFFFFFFFFFFFF3F3F3F39B9B9B9B35353535000000000B0B
      0B0B62626262C8C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8C86262
      62620B0B0B0B00000000353535359B9B9B9BF3F3F3F3FFFFFFFFFFFFFFFFBFBF
      BFBF515151510303030300000000000000000E0E0E0EF5F5F5F5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE4242424200000000000000000E0E0E0EBBBB
      BBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBBBBBBB0E0E0E0E000000000000000042424242FEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F5F5F50E0E0E0E0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      00007B7B7B7B3535353500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000002F2F2F2F616161610E0E0E0E000000002F2F2F2F95959595F0F0
      F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0F0F0F0959595952F2F2F2F000000000E0E0E0E616161612F2F2F2F0000
      00000000000000000000000000000000000059595959FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB3B3B3B3000000000000000002020202BABABABAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBABABABA020202020000000000000000B3B3B3B3FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF595959590000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      000000000000000000000B0B0B0B62626262C8C8C8C8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8C8626262620B0B0B0B000000000000
      0000000000000000000000000000000000009B9B9B9BFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF48484848000000000000000065656565FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF65656565000000000000000048484848FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B9B0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      00002F2F2F2F95959595F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0959595952F2F
      2F2F00000000000000000000000000000000CBCBCBCBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4F4060606060000000000000000D9D9D9D9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD8D8D8D8000000000000000006060606F4F4F4F4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000494949491B1B1B1B00000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF585858580000000000000000000000000B0B0B0B62626262C8C8
      C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3F3F3F3F3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC8C8C8C8626262620B0B0B0B00000000ECECECECFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC9C9C9C9000000000000000022222222FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEA6A6A6A69C9C9C9CFBFBFBFBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF212121210000000000000000C9C9C9C9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECEC0000000056565656FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF88888888000000000000000000000000000000000000
      000000000000000000004F4F4F4FF9F9F9F9DADADADA1B1B1B1B000000000000
      0000000000000000000000000000000000000000000088888888FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5656565600000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000008C8C8C8CF0F0F0F0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFAFAABABABAB45454545030303030303030345454545ABABABABFAFA
      FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF0F0F0F08C8C8C8CFBFBFBFBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB1B1B1B1000000000000000044444444FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAAAAAAAA00000000000000008F8F8F8FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF444444440000000000000000B1B1B1B1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB000000000E0E0E0E5C5C5C5C5E5E
      5E5E5E5E5E5E5E5E5E5E1E1E1E1E000000000000000000000000000000000000
      0000000000004F4F4F4FF9F9F9F9FFFFFFFFFFFFFFFFDADADADA1B1B1B1B0000
      000000000000000000000000000000000000000000001E1E1E1E5E5E5E5E5E5E
      5E5E5E5E5E5E5C5C5C5C0E0E0E0E00000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000001919191982828282E9E9E9E9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDC7878
      78781717171700000000212121217F7F7F7F7F7F7F7F21212121000000001717
      171778787878DCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9E9E9E98282828219191919FBFBFBFBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB1B1B1B1000000000000000044444444FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000000000000000B1B1B1B1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F4FF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADADA1B1B
      1B1B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF030303030000000000000000B7B7B7B7D0D0D0D0D0D0
      D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
      D0D0D0D0D0D0D0D0D0D0B5B5B5B5000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000080808086060
      6060CECECECEFFFFFFFFFFFFFFFFFAFAFAFAABABABAB45454545020202020505
      050552525252B8B8B8B8FDFDFDFDFFFFFFFFFFFFFFFFFDFDFDFDB8B8B8B85252
      5252050505050202020245454545ABABABABFAFAFAFAFFFFFFFFFFFFFFFFCECE
      CECE60606060080808080000000000000000ECECECECFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCACACACA00000000000000001F1F1F1FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F0000000000000000CACACACAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECEC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F4FF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADA
      DADA1B1B1B1B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF030303030000000000000000E0E0E0E0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDEDEDEDE000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000003E3E3E3E7171717117171717000000002121212185858585E7E7
      E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE7E7E7E786868686212121210000000017171717717171713E3E3E3E0000
      000000000000000000000000000000000000CBCBCBCBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F6F6F6070707070000000000000000D5D5D5D5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD4D4D4D4000000000000000007070707F6F6F6F6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB0000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F4FF9F9
      F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDADADADA1B1B1B1B00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF030303030000000000000000292929292F2F2F2F2F2F
      2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
      2F2F2F2F2F2F2F2F2F2F29292929000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      000000000000000000000505050552525252B8B8B8B8FDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFDB9B9B9B95353535305050505000000000000
      0000000000000000000000000000000000009B9B9B9BFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4C4C4C4C00000000000000005F5F5F5FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5F5F5F5F00000000000000004C4C4C4CFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B9B0000000000000000000000000000
      000000000000000000000000000000000000000000004F4F4F4FF9F9F9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDADADADA1A1A1A1A000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      00002121212185858585E7E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E7868686862121
      21210000000000000000000000000000000059595959FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB8B8B8B8000000000000000001010101B2B2B2B2FFFF
      FFFFFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFFFFFFFFB2B2B2B2010101010000000000000000B8B8B8B8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF595959590000000000000000000000000000
      00000000000000000000000000000000000000000000ADADADADD0D0D0D0D0D0
      D0D0D0D0D0D0ECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDCD0D0
      D0D0D0D0D0D0D0D0D0D069696969000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000005050505060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060606060605050505000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF585858580000000000000000000000000505050553535353B8B8
      B8B8FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFDB9B9B9B95353535305050505000000000E0E0E0EF5F5F5F5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4848484800000000000000000B0B0B0BE2E2
      E2E2FFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFE3E3E3E30B0B0B0B000000000000000048484848FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F5F5F50E0E0E0E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF030303030000000000000000E0E0E0E0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDEDEDEDE000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF58585858000000000000000080808080E7E7E7E7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE7E7E7E780808080000000009C9C9C9CFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E61B1B1B1B0000000000000000C5C5
      C5C5FFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFC6C6C6C600000000000000001B1B1B1BE6E6E6E6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9C9C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF030303030000000000000000DADADADAF9F9F9F9F9F9
      F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
      F9F9F9F9F9F9F9F9F9F9D9D9D9D9000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000002525252592929292F2F2F2F2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2F2F2F292929292252525250000000025252525FAFAFAFAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D75555555582828282FEFE
      FEFEFFFFFFFFFFFFFFFF8989898900000000000000006E6E6E6EFFFFFFFFFFFF
      FFFFFEFEFEFE8383838355555555D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFA25252525000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF58585858000000000000000000000000000000000E0E0E0E7070
      7070DCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
      DCDC707070700E0E0E0E000000000000000000000000000000008A8A8A8AFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB0B0B0B0000000000000000095959595FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8A8A8A8A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000020202024E4E4E4EBCBCBCBCFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEBCBCBCBC4E4E4E4E0202
      020200000000000000000000000000000000000000000000000009090909D2D2
      D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4B4AAAAAAAAFDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD2D2D2D20909090900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      00000000000000000000000000002C2C2C2C9A9A9A9AF6F6F6F6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F6F69A9A9A9A2C2C2C2C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000002323
      2323E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9E9232323230000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF03030303000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001313131378787878E2E2
      E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE2E2E2E27878787813131313000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F2FE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92F2F
      2F2F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFF57575757555555555555555555555555555555555555
      5555555555555555555555555555555555555555555555555555555555555555
      5555555555555555555555555555555555555555555555555555FDFDFDFDFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040456565656C5C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5C55656
      5656040404040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023232323D2D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2232323230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000343434349C9C9C9C9C9C9C9C34343434000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909098A8A8A8AFAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A09090909000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000060606060FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6151515150000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053535353FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5858585800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252525259C9C9C9CF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F59C9C9C9C252525250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202028F8F8F8FF2F2F2F2E0E0E0E050505050000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C3CFCFC
      FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFC4040404000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0E5959
      59599B9B9B9BCBCBCBCBECECECECFBFBFBFBFBFBFBFBECECECECCBCBCBCB9B9B
      9B9B595959590E0E0E0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D0D5757
      5757707070700000000026262626F7F7F7F7FBFBFBFBEBEBEBEBCBCBCBCB9B9B
      9B9B595959590E0E0E0E00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F0F9E9E
      9E9EF1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1F19E9E9E9E0F0F0F0F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A8A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037373737565656565656
      5656565656565656565656565656565656565656565656565656565656565656
      5656565656565656565656565656565656565656565656565656565656565656
      56565656565656565656565656564E4E4E4E0D0D0D0D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000232323239A9A9A9AF5F5F5F5FFFF
      FFFFFDFDFDFD323232320000000095959595FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5F59C9C9C9C242424240000000000000000000000000000
      0000000000000000000000000000000000000000000001010101C0C0C0C0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C0C0C001010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010101F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3D30000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848484FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF13131313000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808080889898989F9F9F9F9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1C1C1C10000000014141414EEEEEEEEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A08080808000000000000
      0000000000000000000000000000000000000000000038383838FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF38383838000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000023232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0808
      0808000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4F4FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63636363000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000022222222D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF555555550000000070707070FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D1222222220000
      0000000000000000000000000000000000000000000057575757FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF57575757000000000000000000000000000000000000
      0000000000002B2B2B2BCFCFCFCF7B7B7B7B0404040400000000000000000000
      000053535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3434
      34340000000000000000000000000707070787878787DCDCDCDC333333330000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF4F4
      F4F4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
      F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
      F0F0F0F0F0F0F0F0F0F0FDFDFDFDFFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002E2E2E2EE8E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDFDFDFDF0808080805050505D7D7D7D7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92F2F
      2F2F000000000000000000000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1F1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1F1F1F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000000
      00002B2B2B2BE9E9E9E9FFFFFFFFFFFFFFFFC8C8C8C827272727000000002020
      2020ADADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D
      9D9D20202020000000002F2F2F2FD1D1D1D1FFFFFFFFFFFFFFFFEEEEEEEE3333
      333300000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000000000000000000000000000002222
      2222E9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A000000004A4A4A4AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9595
      9595000000000000000000000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000002B2B
      2B2BE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5B6B6B6B6FCFC
      FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFDBCBCBCBCF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
      EEEE33333333000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000000000000000000008080808D1D1
      D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F31A1A1A1A00000000B7B7B7B7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F11818
      1818000000000505050500000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000000000000000000000000000D0D0
      D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD2D2D2D2000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000353535352424242402020202000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000000000000000000088888888FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0A00000000029292929FAFA
      FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767676760000
      00004D4D4D4D8888888800000000000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000007C7C
      7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF74747474000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      47470000000000000000000000009A9A9A9AFFFFFFFFF4F4F4F4C9C9C9C99C9C
      9C9C707070700F0F0F0F00000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000000000000023232323F9F9F9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD35353535000000009191
      9191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB070707070606
      0606DADADADAF9F9F9F923232323000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000404
      0404C9C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2
      C2C202020202000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      47470000000000000000000000006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF86868686000000000D0D0D0D000000000000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000000000000028282828575757575757
      5757575757575757575757575757575757575757575757575757575757575757
      5757575757575757575757575757575757575757575733333333000000001212
      1212ECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F4F000000007474
      7474FFFFFFFFFFFFFFFF9A9A9A9A000000000000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000000
      000028282828F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD2D2D2D2818181815B5B5B5B5B5B5B5B81818181D1D1D1D1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F32222
      222200000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      474700000000000000000000000040404040FFFFFFFFFFFFFFFFFFFFFFFF8686
      86860000000057575757E9E9E9E9323232320000000000000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBBB0000000017171717F0F0
      F0F0FFFFFFFFFFFFFFFFF5F5F5F50D0D0D0D0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000000
      000000000000B9B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDED
      EDED555555550101010100000000000000000000000000000000000000005454
      5454EDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6B60000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      474700000000000000000000000013131313FFFFFFFFFFFFFFFF858585850000
      000057575757FBFBFBFBFFFFFFFFEDEDEDED3333333300000000000000000000
      00000000000000000000D7D7D7D7FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      00000000000000000000000000000000000047474747B9B9B9B9B9B9B9B9B9B9
      B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B98C8C8C8C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040404D5D5D5D5FFFFFFFFFBFBFBFB2C2C2C2C000000009B9B9B9BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF575757570000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000000000000000
      000020202020FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDED2B2B
      2B2B000000000000000000000000000000000000000000000000000000000000
      00002A2A2A2AECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD2020
      202000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      474700000000000000000000000000000000E5E5E5E585858585000000005757
      5757FBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEE33333333000000000000
      00000000000000000000D8D8D8D8FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      0000000000000000000000000000000000009A9A9A9AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE3D3D3D3D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000047474747FFFFFFFF949494940000000031313131FDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A9A0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585858000000000000000000000000131313134242
      4242A4A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555550000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000054545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4
      A4A442424242131313130000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000004B4B4B4B0000000058585858FBFB
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEE333333330000
      00000000000000000000D8D8D8D8FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000CBCBCBCBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1A1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A2A2A2A21313131301010101C2C2C2C2FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF585858580000000098989898E1E1E1E1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2010101010000
      0000000000000000000048484848AFAFAFAFAFAFAFAF49494949000000000000
      00000000000000000000D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE2E2E2E298989898FFFFFFFFFFFFFFFFFFFFFFFF4747
      474700000000000000000000000000000000000000004B4B4B4BFBFBFBFBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEE3434
      34340000000000000000D8D8D8D8FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000EAEAEAEAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF17171717000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202020000000056565656FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEB0000000058585858FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8A8A8A8A000000000000000000000000000000000000
      0000000000000000000035353535939393938181818114141414000000000000
      0000000000000000000000000000000000000000000089898989FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858585800000000FEFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82828282000000000000
      00000000000048484848FEFEFEFEFFFFFFFFFFFFFFFFFEFEFEFE494949490000
      0000000000000000000081818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000012121212CECECECEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
      EEEE3434343400000000C9C9C9C9FFFFFFFFFFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000FAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D6D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090909E0E0E0E0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0000000056565656FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF88888888000000000000000000000000000000000000
      00000000000033333333F9F9F9F9FFFFFFFFFFFFFFFFD3D3D3D3050505050000
      0000000000000000000000000000000000000000000088888888FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5656565600000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5C5C000000000000
      000000000000AFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0B00000
      000000000000000000005A5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4747
      474700000000000000000000000000000000000000000000000012121212CDCD
      CDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEEEEEEE3434343421212121E0E0E0E0FFFFFFFF6E6E6E6E000000000000
      000000000000000000000000000000000000FAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCF0303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007D7D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA000000000E0E0E0E5C5C5C5C5E5E
      5E5E5E5E5E5E5E5E5E5E1E1E1E1E000000000000000000000000000000000000
      0000000000008C8C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF383838380000
      000000000000000000000000000000000000000000001E1E1E1E5E5E5E5E5E5E
      5E5E5E5E5E5E5C5C5C5C0E0E0E0E00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B000000000000
      000000000000AFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0B00000
      000000000000000000005A5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000001212
      1212CDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFEFEFEF3434343420202020E0E0E0E06E6E6E6E000000000000
      000000000000000000000000000000000000EBEBEBEBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE3A3A3A3A0000000004040404000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C1CF4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82828282000000000000
      00000000000048484848FEFEFEFEFFFFFFFFFFFFFFFFFEFEFEFE494949490000
      0000000000000000000081818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      000012121212CDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEFEFEFEF35353535202020204F4F4F4F000000000000
      000000000000000000000000000000000000CBCBCBCBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9E9E9E9E0000000026262626A5A5A5A5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A9AE3E3E3E3FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D2010101010000
      0000000000000000000048484848AFAFAFAFAFAFAFAF49494949000000000000
      00000000000000000000D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE3E3E3E39A9A9A9AFFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      00000000000012121212CCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF3535353500000000000000000000
      0000000000000000000000000000000000009A9A9A9AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEEEEEEEE1515151500000000B9B9B9B9FFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039393939FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A9A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000141414144444
      4444A5A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555550000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000054545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5
      A5A544444444141414140000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011111111CCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF35353535000000000000
      00000000000000000000000000000000000058585858FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6A6A6A6A0000000054545454FFFFFFFFFFFFFFFFD4D4D4D40404
      0404000000000000000000000000000000000000000000000000000000000000
      000000000000A3A3A3A3D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9
      D9D9D9D9D9D9D9D9D9D9D9D9D9D94F4F4F4F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000020202020FCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDED2B2B
      2B2B000000000000000000000000000000000000000000000000000000000000
      00002A2A2A2AEDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD2020
      202000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011111111CCCCCCCCFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF363636360000
      0000000000000000000000000000000000000D0D0D0DF6F6F6F6FFFFFFFFFFFF
      FFFFCCCCCCCC030303030B0B0B0BE2E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF6F6F
      6F6F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BABABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDED
      EDED555555550101010100000000000000000000000000000000010101015555
      5555EDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9B90000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4747
      4747000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111111CBCBCBCBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF3636
      363600000000000000000000000000000000000000009B9B9B9BFFFFFFFFFDFD
      FDFD373737370000000088888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
      EFEF16161616000000001C1C1C1C373737373737373737373737373737373737
      3737373737373737373737373737373737373737373737373737373737373737
      3737373737373737373718181818000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F2FF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD2D2D2D2828282825B5B5B5B5B5B5B5B81818181D2D2D2D2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F62929
      292900000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF6868
      68682E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2020202011111111CBCBCBCBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
      E7E70A0A0A0A0000000000000000000000000000000024242424FAFAFAFA9B9B
      9B9B0000000029292929F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C9C9C9C000000002A2A2A2AFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9F923232323000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      0707D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCB
      CBCB04040404000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94F4F4F4F11111111CBCB
      CBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F64545
      4545020202022424242400000000000000000000000000000000777777771414
      141400000000BCBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFD35353535000000008E8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8989898900000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5B5B717171717171
      717171717171C5C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696967171
      7171717171717070707036363636000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008787
      8787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7F7F7F7F000000000000000000000000E7E7E7E7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94F4F4F4F1111
      1111CBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6454545450202
      02029D9D9D9DF0F0F0F037373737000000000000000000000000000000000000
      000057575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC7C7C7C7010101010F0F0F0FE8E8E8E8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD1D1D1D10808080800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E9EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCFC4E4E4E4E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDCDCDCDC00000000000000000000000053535353F1F1F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F95050
      505010101010CACACACAFFFFFFFFFFFFFFFFF6F6F6F644444444020202029D9D
      9D9DFFFFFFFFFFFFFFFFF0F0F0F0373737370000000000000000000000000000
      0000CECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF606060600000000062626262FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
      E8E8222222220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030303A6A6A6A6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFC5959595900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      3232EDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3B5B5B5B5FDFD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFDB9B9B9B9F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1F1393939390000000000000000000000000000000006060606181818181818
      1818181818181818181818181818181818181818181818181818181818181818
      1818181818181818181818181818181818181818181818181818181818181414
      14140000000010101010CACACACAF6F6F6F644444444020202029D9D9D9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3E30000000000000000000000000000
      00002F2F2F2FE9E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE7E7E7E70E0E0E0E02020202C9C9C9C9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E92E2E
      2E2E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003030303A6A6
      A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFC595959590000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000032323232EDEDEDEDFFFFFFFFFFFFFFFFC2C2C2C222222222000000002020
      2020ADADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E
      9E9E21212121000000002A2A2A2ACCCCCCCCFFFFFFFFFFFFFFFFF1F1F1F13939
      3939000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000101010103B3B3B3B020202029E9E9E9EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDC0000000000000000000000000000
      00000000000022222222D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C8C0000000036363636FDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D1222222220000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      0303A6A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC5959
      5959000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032323232D1D1D1D1747474740202020200000000000000000000
      000053535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333
      33330000000000000000000000000505050580808080DDDDDDDD3A3A3A3A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A7AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEAEAEAEA2D2D2D2D0000000000000000000000000000
      00000000000000000000080808088A8A8A8AFAFAFAFAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA29292929000000009E9E9E9EFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8989898908080808000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030303A6A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC595959590000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000023232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0808
      0808000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101010C9C9C9C9FFFFFFFFFFFF
      FFFFFFFFFFFFEAEAEAEA2C2C2C2C000000000000000000000000000000000000
      000000000000000000000000000000000000242424249C9C9C9CF5F5F5F5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9B90000000017171717F0F0
      F0F0FFFFFFFFF5F5F5F59B9B9B9B232323230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030303A6A6A6A6FFFFFFFFFCFCFCFC59595959000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010101F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F0FC8C8C8C8FFFF
      FFFFE9E9E9E92C2C2C2C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0E5959
      59599B9B9B9BCCCCCCCCEBEBEBEBFCFCFCFCFCFCFCFC48484848000000004F4F
      4F4F575757570E0E0E0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030303A3A3A3A35959595900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF898989890000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090909094D4D
      4D4D181818180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D1DF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9F91E1E1E1E0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303030606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060303030300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B0000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3E3E606060606060606060606060606060606060
      6060606060605B5B5B5B05050505000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E2EC7C7C7C7FDFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFDC7C7C7C72E2E2E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B0000000000000000000000000000000000000000000000000000
      00000000000000000000B1B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFA13131313000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D9D9D9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFEDADADADAD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8DADA
      DADAFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9D90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B0000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFABABABAB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7
      C7C7000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFA
      FAFAFAFAFAFAFBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B0000000000000000000000000000000000000000000000000000
      0000000000000000000004040404E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4545454500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F6F6
      F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A1A00000000000000000000
      00000000000045454545FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000434343438E8E8E8E8F8F8F8F8F8F
      8F8F8F8F8F8F8F8F8F8F8F8F8F8FD5D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFB909090908F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7272
      7272030303030000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D3D3D3E9E9E9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9E9E9E9D3D3D3D30000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A1A00000000000000000000
      00000000000045454545FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000F2F2F2F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D1A7A7A7A7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4E4E4E4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A1A00000000000000000000
      00000000000045454545FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555503030303F6F6
      F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5B5B5B5B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020202A2A2A2A2FAFA
      FAFAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFAFAFAFAA2A2A2A202020202000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A1A00000000000000000000
      00000000000045454545FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E5C8C8C8C8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5B5B5B5B74747474FAFAFAFAFAFAFAFAFAFAFAFAB3B3B3B3000000000000
      000000000000000000000000000000000000000000003A3A3A3AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF3A3A3A3A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A1A00000000000000000000
      00000000000045454545FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9000000000000
      00000000000000000000000000001A1A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000FFFFFFFFFFFFFFFFD1D1D1D1ADAD
      ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
      ADADADADADADADADADADADADADADADADADADADADADADB4B4B4B4FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFF78787878000000000000
      0000000000000000000000000000000000000000000048484848FFFFFFFFFFFF
      FFFFFEFEFEFEFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFE
      FEFEFFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3D3CECECECECECECECECECE
      CECECECECECEDBDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEECECECECECECE
      CECECECECECECECECECECECECECED3D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2B2B2B2B000000000000000000000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFAFAFAFA17171717000000000000
      0000000000000000000000000000000000000000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2A2A2A2A000000000000000000000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFC0C0C0C029292929292929292929
      2929292929292929292928282828060606060000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010195959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
      969601010101000000000000000000000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9C90000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161616575757571616
      16160101010194949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595950101
      010116161616585858581616161600000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000000000000000000000000004040404DDDDDDDDFFFFFFFFE5E5
      E5E5262626260101010192929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94949494010101012626
      2626E4E4E4E4FFFFFFFFDDDDDDDD04040404FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000E0E0E0EFCFCFCFCFFFFFFFFFFFF
      FFFFE5E5E5E5262626260101010191919191FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393930101010126262626E4E4
      E4E4FFFFFFFFFFFFFFFFFCFCFCFC0E0E0E0EFFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000000000000000000000000000000007C7C7C7CFFFFFFFFFFFF
      FFFFFFFFFFFFE5E5E5E5262626260101010190909090FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF929292920101010126262626E4E4E4E4FFFF
      FFFFFFFFFFFFFFFFFFFF7C7C7C7C00000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808080FFFF
      FFFFFFFFFFFFFFFFFFFFE5E5E5E526262626010101018F8F8F8FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF919191910101010126262626E4E4E4E4FFFFFFFFFFFF
      FFFFFFFFFFFF808080800000000000000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8080FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E526262626000000008D8D8D8DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF909090900101010126262626E4E4E4E4FFFFFFFFFFFFFFFFFFFF
      FFFF80808080000000000000000000000000FFFFFFFFFFFFFFFF6E6E6E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313FFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808080FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E526262626000000008C8C
      8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8F8F8F8F0101010126262626E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF8080
      808000000000000000000000000000000000FFFFFFFFFFFFFFFFB0B0B0B07474
      7474747474747474747474747474747474747474747474747474747474747474
      747474747474747474747474747474747474747474747E7E7E7EFFFFFFFFFFFF
      FFFF5B5B5B5B77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808080FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E5262626260000
      00008B8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D
      8D8D0000000026262626E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF808080800000
      000000000000000000000000000000000000F5F5F5F5FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5151515179797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E52626
      26260000000089898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C8C0000
      000026262626E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF80808080000000000000
      0000000000000000000000000000000000006D6D6D6DF0F0F0F0FAFAFAFAFAFA
      FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
      FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9F9B5B5
      B5B508080808AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
      E5E5262626260000000088888888FFFFFFFFFFFFFFFF8B8B8B8B000000002626
      2626E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF8080808000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      080873737373FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE5E5E5E52626262600000000878787878A8A8A8A0000000026262626E4E4
      E4E4FFFFFFFFFFFFFFFFFFFFFFFF808080800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005858
      5858F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FDFD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797979FFFFFFFFFFFFFFFF97979797FFFFFFFFFFFF
      FFFFFFFFFFFFE5E5E5E526262626000000000000000026262626E4E4E4E4FFFF
      FFFFFFFFFFFFFFFFFFFF80808080000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005B5B
      5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797979FFFFFFFFFFFFFFFF1919191980808080FFFF
      FFFFFFFFFFFFFFFFFFFFE5E5E5E52626262626262626E4E4E4E4FFFFFFFFFFFF
      FFFFFFFFFFFF8080808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005B5B
      5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000048484848FFFFFFFFFFFF
      FFFFB2B2B2B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2B2FFFFFFFFFFFFFFFF48484848000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797979FFFFFFFFFFFFFFFF19191919000000008080
      8080FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E5E4E4E4E4FFFFFFFFFFFFFFFFFFFF
      FFFF808080800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE0000000046464646FFFFFFFFFFFF
      FFFFFCFCFCFCF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
      F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
      F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4FCFC
      FCFCFFFFFFFFFFFFFFFF46464646000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060606060FFFFFFFFF5F5F5F50B0B0B0B000000000000
      000080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
      8080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002424
      2424F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEBE000000001C1C1C1CFAFAFAFAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFA1C1C1C1C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020202575757573232323200000000000000000000
      00000000000080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000252525255F5F5F5F60606060606060606060606060606060606060606060
      6060606060606060606060606060606060606060606060606060606060606060
      60606060606060606060565656560B0B0B0B00000000000000005E5E5E5EEAEA
      EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAEAEAEA5E5E5E5E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808080FFFFFFFFFFFFFFFF80808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505050606060606060606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060505
      0505000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080808080808000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFC003FFC0000003FF800FFFFFFFFFFF
      FF0000FF80000001FE0003FFE0000007FC00003F80000001F80000FF80000001
      F800001F80000001F000007F00000000F000000F87FC3FE1E000003F00000000
      E000000787FC3FE1C000001F04442220C000000387FC3FE1C000001F00000000
      C000000387FC3FE18000000F800000018000000187FC3FE18000000FC0000003
      800000418000000100000007E0000007060000608000000100000007E0003FC7
      078001E08000000100000007E0003FC70FE007F087FC3FE100000007E0003FC7
      0FF81FF087FC3FE100000007E0003FC70FF81FF087FC3FE100000007E0000007
      0FF00FF087FC3FE10001FFFFE00000070FF00FF0000000000001FFFFE0000007
      0FE007F00000000000018000E00000070FE007F00000000000018000E0000007
      0FE007F00000000000018000E000000707E007E00000000080018000E0000007
      07E007E00000000080018000E000000783E007C100000000C0018000E0000007
      81F00F8100000000C0018001E0000007C1F01F8300000000E0018001E0000007
      C07E3E0300000000F0018003F000000FE03FFC07FE00007FF8018003FC47E23F
      F00FF00FFE18187FFE018007FFC003FFF800001FFE10087FFF81800FFFC003FF
      FC00003FFE00007FFFFF801FFFE007FFFF0000FFFF0180FFFFFF807FFFF81FFF
      FFC003FFFF83C1FFFFFF81FFFFFFFFFFFF1C38FFFFFFFE03FC3FFFFFFFCFFFFF
      FF0C30FFFFFFFC01FC3FFFFFFFC7FFFFFF0420FFFFFFF800FC3FFFFFFFC3FFFF
      FF8000FFFFFFF800FC3FFFFFFFC0FFFFFFC003FFFFFFF800FC3FFFFFFFC07FFF
      FFE007FFFFFFF800FC3FFFFFFFC03FFFF800001FFFFFF000FC3FFFFFFFC01FFF
      F000000FFFFFC000F83FFFFFC0000003F000000FFFFF0000F83FFFFF80000001
      F1FFFF8FFFFC0001F87FFFFF00030000F1FFFF8FE0F00203F87FFFFF00038000
      F1FFFF8F80000F07F87FF87F07FFFFE0F1FFFF8F00003FFFF81FE00F0FFFFFF0
      F1FFFF8F0000FFFFF80000030FFFFFF0F1FFFF8F0003FFFFF00000030FFFFFF0
      F1FFFF8F000FFFFFF00000030FFFFFF0F1FFFF8F000FFFFFF00000030FFFFFF0
      F1FFFF8F0003FFFFF00000030F1C38F0F1FFFF8F0000FFFFF00000030E1C3870
      F1FFFF8F00003FFFF00000030E0C3070F1FFFF8F80000F07F00000030E0C3070
      F1FFFF8FE0E00203E00000030E1C3870F1FFFF8FFFF80001E00000030FFFFFF0
      F1FFFF8FFFFF0000E00000030FFFFFF0F000000FFFFFC000E00000030FFFFFF0
      F000000FFFFFF000E00000030FFFFFF0F000000FFFFFF800E00000030FFFFFF0
      F000000FFFFFF800C1800FC30FFFFFF0F003C00FFFFFF800C0F07FF300000000
      F000000FFFFFF800C0FFFFFF00000000F000000FFFFFFC01C0FFFFFF80000001
      FFF81FFFFFFFFE03C1FFFFFFC0000003C0000003FFFFF003FFFFFFFFFFC003FF
      80000001FFF00003FFFFFFFFFF0000FF80000001FC000003FFF81FFFFC00003F
      80000001F0000003FFE007FFF800001F80000001F0000003FF0000FFF000000F
      81FFFF81E0000043FC00003FE000000781FFFF81C04001C3E0000007C003C003
      81FFFF81C1E007C380000001C01FF80381FFFF81C1F01FC30000000080381C01
      81FFFF81C1F03FC3000420008060060181FFFF81C1F0FFC3C000000300C00300
      81FFFF81C1F3FFC3F880011F0180018081FFFF81C1FFFFC3FC00003F01800180
      81FFFF81C1FFFFC3F000000F0100008081FE7F81C1FFFFC380000001030000C0
      81FC3F81C1FFFFC300000000030180C081F81F81C1FFFFC300042000030180C0
      FFF00FFFC18001C3C0000003030180C0FFE007FFC18001C3F080010F01018080
      FFC003FFC18001C3FC00003F01818180FF8001FFC1FFFFC3F000000F01818180
      FF8001FFC18001C38000000100C18300FFF81FFFC18001C30000000080618601
      FFF81FFFC18001C30000000080018001FFF81FFFC1FFFFC3C0000003C0018003
      FFF81FFFC1FFFFC3F000000FC0000003FFF81FFFC1FFFFC3FE00007FE0000007
      FFF81FFFC1FFFFC3FF8001FFF000000FFFF81FFFC0000003FFE007FFF800001F
      FFF81FFFC0000003FFFC3FFFFC00003FFFF81FFFC0000003FFFFFFFFFF0000FF
      FFF83FFFC0000003FFFFFFFFFFC003FFFFC403FFC0000003FFF81FFF0000007F
      FF0200FF80000001FFF01FFF0000003FFC00003F80000001FFF00FFF0000003F
      F801001F80000001F8700E1F0000003FF000000F80000001F020040F0FFFFC3F
      E000800F81FFFF81E00000070FFFFC3FC000400381FFFF81E00000070E3FFC3F
      C000401381FFFF81E00000070E03FC3F8000200181FFFF81E00000070E01FC3F
      8000202181FFFF81F000000F0E00FC3FFFFFF00081FFFF81F803C01F0E007C3F
      001FF04081FFFF81F00FF00F0F003C3F001FF88081FFFF81C01FF8030F001C3F
      003FFC0081FFFF81001C38000F800C3F003FFD0081FC3F8100381C000F80043F
      007FFE0081F81F8100381C000FC0003F007FFE0081F81F8100381C000FE0003F
      00BFFC00FFF81FFF00381C000FF0003F013FFC00FFF81FFF001C38000FF8007F
      001FF800FFF81FFFC01FF8030FFC003F020FF800FFF81FFFF00FF00F0FFE001F
      000FFFFFFFF81FFFF803C01F0FFF000F84040001FFF81FFFF000000F00000007
      88040001FFF81FFFE000000700000003C0020003FF8001FFE000000700000001
      F0000003FF8001FFE000000700000000F0010007FF8003FFE000000780000800
      F000000FFFC007FFF020040FFFFFFC00F800801FFFE00FFFF8700E1FFFFFFF00
      FC00403FFFF01FFFFFF00FFFFFFFFF01FF0000FFFFF83FFFFFF01FFFFFFFFF83
      FFC023FFFFFC7FFFFFF81FFFFFFFFFC700000000E0003E07FFFFFFFFFFFFFFFF
      00000000E0003E07FFFFFFFFC000000300000000E0003E07FC01FFFF00000000
      00000000E0003E07FC01FFFF0000000000000000E0003E07FC03FFFF0007E000
      00000000E0003E07FC03FFFF0000000000000000E0783E07000007FF00000000
      00000000E0783E07000007FFFFFFFFFF00000000E0783E07000007FF80000001
      00000000E0783E070000003F8000000100000000E0783E070000003F80000001
      00000000E00000071FFF803F87FFFFE100000000E00000071FFF800087FFFFE1
      00000000E00000071FFF800087FFFFE100000000800000011FFF800087FFFFE1
      00000000000000001FFF800087FFFFE100000000000000001FFF800087FFFFE1
      00000000800000011FFF800087FFFFE100000000C00000031FFF800087FFFFE1
      00000000E00000071FFF800087FFFFE100000000F000000F0000000087FFFFE1
      00000000F800001F0000000087FFFFE100000000FC00003F0000000087FFFFE1
      00000000FC00007FFFFFE00087FFFFE100000000FC0000FFFFE0000087FFFFE1
      00000000FC0001FFFFE0000087FFFFE100000000FC0003FFFFE0000087FFFFE1
      00000000FC2007FFFFE000008000000100000000FC300FFFFFE0000080000001
      00000000FC781FFFFFF00000C000000300000000FFFC3FFFFFFFFFFFE0000007
      00000000FFFE7FFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatDefault
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    Left = 144
    Top = 456
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = True
    DropDownForm = False
    DropDownAnimation = False
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    Left = 144
    Top = 384
  end
end
