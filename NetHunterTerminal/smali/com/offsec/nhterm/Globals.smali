.class public Lcom/offsec/nhterm/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static AccelerometerCenterPos:I = 0x0

.field public static AccelerometerSensitivity:I = 0x0

.field public static AppLibraries:[Ljava/lang/String; = null

.field public static AppMinimumRAM:I = 0x0

.field public static AppNeedsArrowKeys:Z = false

.field public static AppNeedsTextInput:Z = false

.field public static AppNeedsTwoButtonMouse:Z = false

.field public static AppTouchscreenKeyboardKeysAmount:I = 0x0

.field public static AppTouchscreenKeyboardKeysNames:[Ljava/lang/String; = null

.field public static AppUsesAccelerometer:Z = false

.field public static AppUsesGyroscope:Z = false

.field public static AppUsesJoystick:Z = false

.field public static AppUsesMouse:Z = false

.field public static AppUsesMultitouch:Z = false

.field public static AppUsesOrientationSensor:Z = false

.field public static AppUsesSecondJoystick:Z = false

.field public static AppUsesThirdJoystick:Z = false

.field public static AudioBufferConfig:I = 0x0

.field public static AutoDetectOrientation:Z = false

.field public static ClickMouseWithDpad:Z = false

.field public static ClickScreenPressure:I = 0x0

.field public static ClickScreenTouchspotSize:I = 0x0

.field public static CommandLine:Ljava/lang/String; = null

.field public static CompatibilityHacksForceScreenUpdateMouseClick:Z = false

.field public static CompatibilityHacksStaticInit:Z = false

.field public static CompatibilityHacksTextInputEmulatesHwKeyboard:Z = false

.field public static CompatibilityHacksVideo:Z = false

.field public static CreateService:Z = false

.field public static DataDir:Ljava/lang/String; = null

.field public static DataDownloadUrl:[Ljava/lang/String; = null

.field public static DeleteFilesOnUpgrade:Ljava/lang/String; = null

.field public static DownloadToSdcard:Z = false

.field public static FingerHover:Z = false

.field public static FirstStartMenuOptions:[Lcom/offsec/nhterm/SettingsMenu$Menu; = null

.field public static FloatingScreenJoystick:Z = false

.field public static ForceHardwareMouse:Z = false

.field public static ForceRelativeMouseMode:Z = false

.field public static GenerateSubframeTouchEvents:Z = false

.field public static HiddenMenuOptions:[Lcom/offsec/nhterm/SettingsMenu$Menu; = null

.field public static HideSystemMousePointer:Z = false

.field public static HomeDir:Ljava/lang/String; = null

.field public static HorizontalOrientation:Z = false

.field public static HoverJitterFilter:Z = false

.field public static ImmersiveMode:Z = false

.field public static InhibitSuspend:Z = false

.field public static KeepAspectRatio:Z = false

.field public static KeepAspectRatioDefaultSetting:Z = false

.field public static LeftClickKey:I = 0x0

.field public static LeftClickMethod:I = 0x0

.field public static LeftClickTimeout:I = 0x0

.field public static MoveMouseWithGyroscope:Z = false

.field public static MoveMouseWithGyroscopeSpeed:I = 0x0

.field public static MoveMouseWithJoystick:Z = false

.field public static MoveMouseWithJoystickAccel:I = 0x0

.field public static MoveMouseWithJoystickSpeed:I = 0x0

.field public static MultiThreadedVideo:Z = false

.field public static MultitouchGestureSensitivity:I = 0x0

.field public static MultitouchGesturesUsed:[Z = null

.field public static NeedDepthBuffer:Z = false

.field public static NeedGles2:Z = false

.field public static NeedGles3:Z = false

.field public static NeedStencilBuffer:Z = false

.field public static NonBlockingSwapBuffers:Z = false

.field public static OptionalDataDownload:[Z = null

.field public static OuyaEmulation:Z = false

.field public static PhoneHasArrowKeys:Z = false

.field public static ReadmeText:Ljava/lang/String; = null

.field public static RelativeMouseMovement:Z = false

.field public static RelativeMouseMovementAccel:I = 0x0

.field public static RelativeMouseMovementSpeed:I = 0x0

.field public static RemapHwKeycode:[I = null

.field public static RemapMultitouchGestureKeycode:[I = null

.field public static RemapScreenKbKeycode:[I = null

.field public static ResetSdlConfigForThisVersion:Z = false

.field public static RightClickKey:I = 0x0

.field public static RightClickMethod:I = 0x0

.field public static RightClickTimeout:I = 0x0

.field public static RightMouseButtonLongPress:Z = false

.field public static ScreenFollowsMouse:Z = false

.field public static ScreenKbControlsLayout:[[I = null

.field public static ScreenKbControlsShown:[Z = null

.field public static ShowMouseCursor:Z = false

.field public static ShowScreenUnderFinger:I = 0x0

.field public static StartupMenuButtonTimeout:I = 0x0

.field public static SwVideoMode:Z = false

.field public static final TOUCHSCREEN_KEYBOARD_CUSTOM:I = 0x4

.field public static TextInputKeyboard:I = 0x0

.field public static TouchscreenCalibration:[I = null

.field public static TouchscreenKeyboardDrawSize:I = 0x0

.field public static TouchscreenKeyboardSize:I = 0x0

.field public static TouchscreenKeyboardTheme:I = 0x0

.field public static TouchscreenKeyboardTransparency:I = 0x0

.field public static TvBorders:Z = false

.field public static UnSecureDataDir:Ljava/lang/String; = null

.field public static UseAccelerometerAsArrowKeys:Z = false

.field public static UseTouchscreenKeyboard:Z = false

.field public static final Using_SDL_1_3:Z = false

.field public static final Using_SDL_2_0:Z = false

.field public static VideoDepthBpp:I = 0x0

.field public static VideoLinearFilter:Z = false

.field public static XAPP_LIBS:[Ljava/lang/String; = null

.field public static XLIBS:[Ljava/lang/String; = null

.field public static XLIB_DIR:Ljava/lang/String; = "/data/data/io.neoterm/files/usr/lib/xorg-neoterm"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v0, "x11_sdl_ttf"

    const-string/jumbo v1, "x11_crypto"

    const-string/jumbo v2, "x11_sdl_native_helpers"

    const-string/jumbo v3, "x11_sdl-1.2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nhterm/Globals;->XLIBS:[Ljava/lang/String;

    const-string/jumbo v0, "x11_application"

    const-string/jumbo v1, "x11_sdl_main"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nhterm/Globals;->XAPP_LIBS:[Ljava/lang/String;

    const-string v0, "sdl_ttf"

    const-string v1, "crypto"

    const-string v2, "sdl_native_helpers"

    const-string v3, "sdl-1.2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nhterm/Globals;->AppLibraries:[Ljava/lang/String;

    const-string v0, "!!Data files|:DroidSansMono.ttf:DroidSansMono.ttf"

    const-string v1, "Additional fonts (90Mb)|:xfonts.tar.gz:http://sourceforge.net/projects/libsdl-android/files/apk/XServer-XSDL/xfonts.tgz/download"

    const-string v2, "!!Data files|:data.tar.gz:data-1.tgz"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nhterm/Globals;->DataDownloadUrl:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->SwVideoMode:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->NeedDepthBuffer:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->NeedStencilBuffer:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->NeedGles2:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->NeedGles3:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->CompatibilityHacksVideo:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->CompatibilityHacksForceScreenUpdateMouseClick:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->CompatibilityHacksStaticInit:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    sput v1, Lcom/offsec/nhterm/Globals;->TextInputKeyboard:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->KeepAspectRatioDefaultSetting:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->InhibitSuspend:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->CreateService:Z

    const-string v2, ""

    sput-object v2, Lcom/offsec/nhterm/Globals;->ReadmeText:Ljava/lang/String;

    const-string v2, "XSDL"

    sput-object v2, Lcom/offsec/nhterm/Globals;->CommandLine:Ljava/lang/String;

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->AppUsesMouse:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->AppNeedsTwoButtonMouse:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->RightMouseButtonLongPress:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->ForceRelativeMouseMode:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ShowMouseCursor:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->ScreenFollowsMouse:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppNeedsArrowKeys:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppNeedsTextInput:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesJoystick:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesSecondJoystick:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesThirdJoystick:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesAccelerometer:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesGyroscope:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AppUsesOrientationSensor:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->AppUsesMultitouch:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->NonBlockingSwapBuffers:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ResetSdlConfigForThisVersion:Z

    const-string v2, "%"

    sput-object v2, Lcom/offsec/nhterm/Globals;->DeleteFilesOnUpgrade:Ljava/lang/String;

    const/4 v2, 0x3

    sput v2, Lcom/offsec/nhterm/Globals;->AppTouchscreenKeyboardKeysAmount:I

    const-string v3, "LCTRL LALT LSHIFT RETURN SPACE DELETE KP_PLUS KP_MINUS 1 2"

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/offsec/nhterm/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    const/16 v3, 0xbb8

    sput v3, Lcom/offsec/nhterm/Globals;->StartupMenuButtonTimeout:I

    sput v1, Lcom/offsec/nhterm/Globals;->AppMinimumRAM:I

    new-array v3, v1, [Lcom/offsec/nhterm/SettingsMenu$Menu;

    sput-object v3, Lcom/offsec/nhterm/Globals;->HiddenMenuOptions:[Lcom/offsec/nhterm/SettingsMenu$Menu;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/offsec/nhterm/SettingsMenu$Menu;

    new-instance v5, Lcom/offsec/nhterm/SettingsMenuMisc$GyroscopeCalibration;

    invoke-direct {v5}, Lcom/offsec/nhterm/SettingsMenuMisc$GyroscopeCalibration;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/offsec/nhterm/SettingsMenuMisc$OptionalDownloadConfig;

    invoke-direct {v5}, Lcom/offsec/nhterm/SettingsMenuMisc$OptionalDownloadConfig;-><init>()V

    aput-object v5, v4, v0

    sput-object v4, Lcom/offsec/nhterm/Globals;->FirstStartMenuOptions:[Lcom/offsec/nhterm/SettingsMenu$Menu;

    const/16 v4, 0x10

    sput v4, Lcom/offsec/nhterm/Globals;->VideoDepthBpp:I

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->HorizontalOrientation:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->AutoDetectOrientation:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->ImmersiveMode:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->HideSystemMousePointer:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->DownloadToSdcard:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->PhoneHasArrowKeys:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->UseAccelerometerAsArrowKeys:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->UseTouchscreenKeyboard:Z

    sput v0, Lcom/offsec/nhterm/Globals;->TouchscreenKeyboardSize:I

    sput v3, Lcom/offsec/nhterm/Globals;->TouchscreenKeyboardDrawSize:I

    sput v1, Lcom/offsec/nhterm/Globals;->TouchscreenKeyboardTheme:I

    sput v3, Lcom/offsec/nhterm/Globals;->TouchscreenKeyboardTransparency:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->FloatingScreenJoystick:Z

    sput v3, Lcom/offsec/nhterm/Globals;->AccelerometerSensitivity:I

    sput v3, Lcom/offsec/nhterm/Globals;->AccelerometerCenterPos:I

    sput v1, Lcom/offsec/nhterm/Globals;->AudioBufferConfig:I

    const/4 v4, 0x0

    sput-object v4, Lcom/offsec/nhterm/Globals;->OptionalDataDownload:[Z

    sget-boolean v4, Lcom/offsec/nhterm/Globals;->ForceRelativeMouseMode:Z

    const/4 v5, 0x7

    if-eqz v4, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sput v6, Lcom/offsec/nhterm/Globals;->LeftClickMethod:I

    const/16 v6, 0x17

    sput v6, Lcom/offsec/nhterm/Globals;->LeftClickKey:I

    sput v2, Lcom/offsec/nhterm/Globals;->LeftClickTimeout:I

    const/4 v6, 0x4

    sput v6, Lcom/offsec/nhterm/Globals;->RightClickTimeout:I

    sget-boolean v7, Lcom/offsec/nhterm/Globals;->AppNeedsTwoButtonMouse:Z

    sput v7, Lcom/offsec/nhterm/Globals;->RightClickMethod:I

    const/16 v7, 0x52

    sput v7, Lcom/offsec/nhterm/Globals;->RightClickKey:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->MoveMouseWithJoystick:Z

    sput v0, Lcom/offsec/nhterm/Globals;->MoveMouseWithJoystickSpeed:I

    sput v1, Lcom/offsec/nhterm/Globals;->MoveMouseWithJoystickAccel:I

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->MoveMouseWithGyroscope:Z

    sput v3, Lcom/offsec/nhterm/Globals;->MoveMouseWithGyroscopeSpeed:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ClickMouseWithDpad:Z

    sput-boolean v4, Lcom/offsec/nhterm/Globals;->RelativeMouseMovement:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ForceHardwareMouse:Z

    sput v3, Lcom/offsec/nhterm/Globals;->RelativeMouseMovementSpeed:I

    sput v1, Lcom/offsec/nhterm/Globals;->RelativeMouseMovementAccel:I

    sput v1, Lcom/offsec/nhterm/Globals;->ShowScreenUnderFinger:I

    sput v1, Lcom/offsec/nhterm/Globals;->ClickScreenPressure:I

    sput v1, Lcom/offsec/nhterm/Globals;->ClickScreenTouchspotSize:I

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->FingerHover:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->HoverJitterFilter:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->GenerateSubframeTouchEvents:Z

    sget-boolean v4, Lcom/offsec/nhterm/Globals;->KeepAspectRatioDefaultSetting:Z

    sput-boolean v4, Lcom/offsec/nhterm/Globals;->KeepAspectRatio:Z

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->TvBorders:Z

    const/16 v4, 0xff

    new-array v4, v4, [I

    sput-object v4, Lcom/offsec/nhterm/Globals;->RemapHwKeycode:[I

    const/4 v4, 0x6

    new-array v7, v4, [I

    sput-object v7, Lcom/offsec/nhterm/Globals;->RemapScreenKbKeycode:[I

    sget-boolean v7, Lcom/offsec/nhterm/Globals;->AppUsesThirdJoystick:Z

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x5

    if-eqz v7, :cond_1

    const/16 v7, 0xa

    new-array v7, v7, [[I

    new-array v11, v6, [I

    fill-array-data v11, :array_0

    aput-object v11, v7, v1

    new-array v11, v6, [I

    fill-array-data v11, :array_1

    aput-object v11, v7, v0

    new-array v11, v6, [I

    fill-array-data v11, :array_2

    aput-object v11, v7, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    aput-object v3, v7, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v7, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_5

    aput-object v2, v7, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_6

    aput-object v2, v7, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_7

    aput-object v2, v7, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_8

    aput-object v2, v7, v9

    new-array v2, v6, [I

    fill-array-data v2, :array_9

    aput-object v2, v7, v8

    goto/16 :goto_1

    :cond_1
    sget-boolean v7, Lcom/offsec/nhterm/Globals;->AppUsesSecondJoystick:Z

    if-eqz v7, :cond_2

    new-array v7, v8, [[I

    new-array v8, v6, [I

    fill-array-data v8, :array_a

    aput-object v8, v7, v1

    new-array v8, v6, [I

    fill-array-data v8, :array_b

    aput-object v8, v7, v0

    new-array v8, v6, [I

    fill-array-data v8, :array_c

    aput-object v8, v7, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_d

    aput-object v3, v7, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_e

    aput-object v2, v7, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_f

    aput-object v2, v7, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_10

    aput-object v2, v7, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11

    aput-object v2, v7, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_12

    aput-object v2, v7, v9

    goto :goto_1

    :cond_2
    new-array v7, v9, [[I

    new-array v8, v6, [I

    fill-array-data v8, :array_13

    aput-object v8, v7, v1

    new-array v8, v6, [I

    fill-array-data v8, :array_14

    aput-object v8, v7, v0

    new-array v8, v6, [I

    fill-array-data v8, :array_15

    aput-object v8, v7, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_16

    aput-object v3, v7, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_17

    aput-object v2, v7, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_18

    aput-object v2, v7, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_19

    aput-object v2, v7, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_1a

    aput-object v2, v7, v5

    :goto_1
    sput-object v7, Lcom/offsec/nhterm/Globals;->ScreenKbControlsLayout:[[I

    array-length v2, v7

    new-array v2, v2, [Z

    sput-object v2, Lcom/offsec/nhterm/Globals;->ScreenKbControlsShown:[Z

    new-array v2, v6, [I

    sput-object v2, Lcom/offsec/nhterm/Globals;->RemapMultitouchGestureKeycode:[I

    new-array v2, v6, [Z

    sput-object v2, Lcom/offsec/nhterm/Globals;->MultitouchGesturesUsed:[Z

    sput v0, Lcom/offsec/nhterm/Globals;->MultitouchGestureSensitivity:I

    new-array v2, v6, [I

    sput-object v2, Lcom/offsec/nhterm/Globals;->TouchscreenCalibration:[I

    const-string v2, "/data/data/io.neoterm/files/usr/share/xorg-neoterm"

    sput-object v2, Lcom/offsec/nhterm/Globals;->DataDir:Ljava/lang/String;

    sput-object v2, Lcom/offsec/nhterm/Globals;->UnSecureDataDir:Ljava/lang/String;

    const-string v2, "/data/data/io.neoterm/files/home"

    sput-object v2, Lcom/offsec/nhterm/Globals;->HomeDir:Ljava/lang/String;

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->VideoLinearFilter:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->MultiThreadedVideo:Z

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->OuyaEmulation:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x12f
        0xb1
        0x1e0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x30
        0x30
    .end array-data

    :array_2
    .array-data 4
        0x190
        0x188
        0x1e8
        0x1e0
    .end array-data

    :array_3
    .array-data 4
        0x138
        0x188
        0x190
        0x1e0
    .end array-data

    :array_4
    .array-data 4
        0x190
        0x130
        0x1e8
        0x188
    .end array-data

    :array_5
    .array-data 4
        0x138
        0x130
        0x190
        0x188
    .end array-data

    :array_6
    .array-data 4
        0x190
        0xd8
        0x1e8
        0x130
    .end array-data

    :array_7
    .array-data 4
        0x138
        0xd8
        0x190
        0x130
    .end array-data

    :array_8
    .array-data 4
        0x26f
        0x12f
        0x320
        0x1e0
    .end array-data

    :array_9
    .array-data 4
        0x26f
        0x7e
        0x320
        0x12f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x12f
        0xb1
        0x1e0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x30
        0x30
    .end array-data

    :array_c
    .array-data 4
        0x190
        0x188
        0x1e8
        0x1e0
    .end array-data

    :array_d
    .array-data 4
        0x138
        0x188
        0x190
        0x1e0
    .end array-data

    :array_e
    .array-data 4
        0x190
        0x130
        0x1e8
        0x188
    .end array-data

    :array_f
    .array-data 4
        0x138
        0x130
        0x190
        0x188
    .end array-data

    :array_10
    .array-data 4
        0x190
        0xd8
        0x1e8
        0x130
    .end array-data

    :array_11
    .array-data 4
        0x138
        0xd8
        0x190
        0x130
    .end array-data

    :array_12
    .array-data 4
        0x26f
        0x12f
        0x320
        0x1e0
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x12f
        0xb1
        0x1e0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x30
        0x30
    .end array-data

    :array_15
    .array-data 4
        0x2c8
        0x188
        0x320
        0x1e0
    .end array-data

    :array_16
    .array-data 4
        0x270
        0x188
        0x2c8
        0x1e0
    .end array-data

    :array_17
    .array-data 4
        0x2c8
        0x130
        0x320
        0x188
    .end array-data

    :array_18
    .array-data 4
        0x270
        0x130
        0x2c8
        0x188
    .end array-data

    :array_19
    .array-data 4
        0x2c8
        0xd8
        0x320
        0x130
    .end array-data

    :array_1a
    .array-data 4
        0x270
        0xd8
        0x2c8
        0x130
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
