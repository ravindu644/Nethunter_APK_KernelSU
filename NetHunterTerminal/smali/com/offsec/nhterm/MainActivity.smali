.class public Lcom/offsec/nhterm/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/offsec/nhterm/xorg/NeoXorgViewClient;


# static fields
.field static final ADVERTISEMENT_POSITION_BOTTOM:I = -0x1

.field static final ADVERTISEMENT_POSITION_CENTER:I = -0x2

.field static final ADVERTISEMENT_POSITION_RIGHT:I = -0x1

.field public static ApplicationLibraryLoaded:Z = false

.field public static instance:Lcom/offsec/nhterm/MainActivity; = null

.field static keyboardWithoutTextInputShown:Z = false

.field private static mAudioThread:Lcom/offsec/nhterm/AudioThread;


# instance fields
.field private TextInputKeyboardList:[[I

.field private _btn:Landroid/widget/Button;

.field private _inputManager:Landroid/view/inputmethod/InputMethodManager;

.field _isPaused:Z

.field private _layout:Landroid/widget/LinearLayout;

.field private _layout2:Landroid/widget/LinearLayout;

.field private _screenKeyboard:Landroid/view/View;

.field private _screenKeyboardHintMessage:Ljava/lang/String;

.field private _tv:Landroid/widget/TextView;

.field _videoLayout:Landroid/widget/FrameLayout;

.field public loadingDialog:Landroid/app/ProgressDialog;

.field mGLView:Lcom/offsec/nhterm/NeoGLView;

.field private sdlInited:Z

.field public textInput:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public writeExternalStoragePermissionDialogAnswered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->qwerty:I

    const/4 v6, 0x1

    aput v5, v3, v6

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->c64:I

    const/4 v7, 0x2

    aput v5, v3, v7

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->amiga:I

    const/4 v8, 0x3

    aput v5, v3, v8

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->atari800:I

    aput v5, v3, v0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    aput v4, v3, v4

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->qwerty_shift:I

    aput v5, v3, v6

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->c64:I

    aput v5, v3, v7

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->amiga_shift:I

    aput v5, v3, v8

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->atari800:I

    aput v5, v3, v0

    aput-object v3, v1, v6

    new-array v3, v2, [I

    aput v4, v3, v4

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->qwerty_alt:I

    aput v5, v3, v6

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->c64:I

    aput v5, v3, v7

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->amiga_alt:I

    aput v5, v3, v8

    sget v5, Lcom/offsec/nhterm/xorg/R$xml;->atari800:I

    aput v5, v3, v0

    aput-object v3, v1, v7

    new-array v2, v2, [I

    aput v4, v2, v4

    sget v3, Lcom/offsec/nhterm/xorg/R$xml;->qwerty_alt_shift:I

    aput v3, v2, v6

    sget v3, Lcom/offsec/nhterm/xorg/R$xml;->c64:I

    aput v3, v2, v7

    sget v3, Lcom/offsec/nhterm/xorg/R$xml;->amiga_alt_shift:I

    aput v3, v2, v8

    sget v3, Lcom/offsec/nhterm/xorg/R$xml;->atari800:I

    aput v3, v2, v0

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->TextInputKeyboardList:[[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->loadingDialog:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/offsec/nhterm/MainActivity;->sdlInited:Z

    iput-boolean v4, p0, Lcom/offsec/nhterm/MainActivity;->_isPaused:Z

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->textInput:Ljava/util/LinkedList;

    iput-boolean v4, p0, Lcom/offsec/nhterm/MainActivity;->writeExternalStoragePermissionDialogAnswered:Z

    return-void
.end method

.method public static LoadApplicationLibrary(Landroid/content/Context;)V
    .locals 7

    const-string p0, "SDL"

    sget-object v0, Lcom/offsec/nhterm/Globals;->DataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nhterm/Settings;->nativeChdir(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/offsec/nhterm/Globals;->XAPP_LIBS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nhterm/Globals;->XLIB_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "libSDL: loading lib "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "libSDL: error loading lib "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    :cond_0
    const-string v0, "libSDL: loaded all libraries"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/offsec/nhterm/MainActivity;->ApplicationLibraryLoaded:Z

    return-void
.end method

.method static synthetic access$000()Lcom/offsec/nhterm/AudioThread;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/MainActivity;->mAudioThread:Lcom/offsec/nhterm/AudioThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nhterm/AudioThread;)Lcom/offsec/nhterm/AudioThread;
    .locals 0

    sput-object p0, Lcom/offsec/nhterm/MainActivity;->mAudioThread:Lcom/offsec/nhterm/AudioThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/offsec/nhterm/MainActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/offsec/nhterm/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nhterm/MainActivity;->initSDLInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/offsec/nhterm/MainActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/offsec/nhterm/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/offsec/nhterm/MainActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/offsec/nhterm/MainActivity;)[[I
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->TextInputKeyboardList:[[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/offsec/nhterm/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/offsec/nhterm/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method private initSDLInternal()V
    .locals 11

    iget-boolean v0, p0, Lcom/offsec/nhterm/MainActivity;->sdlInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SDL"

    const-string v1, "libSDL: Initializing video and SDL application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/MainActivity;->sdlInited:Z

    invoke-static {}, Lcom/offsec/nhterm/DimSystemStatusBar;->get()Lcom/offsec/nhterm/DimSystemStatusBar;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/offsec/nhterm/DimSystemStatusBar;->dim(Landroid/view/View;)V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/offsec/nhterm/SetLayerType;->get()Lcom/offsec/nhterm/SetLayerType;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/offsec/nhterm/SetLayerType;->setLayerType(Landroid/view/View;)V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/MainActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/offsec/nhterm/NeoGLView;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/NeoGLView;-><init>(Lcom/offsec/nhterm/xorg/NeoXorgViewClient;)V

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-static {}, Lcom/offsec/nhterm/SetLayerType;->get()Lcom/offsec/nhterm/SetLayerType;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v1, v2}, Lcom/offsec/nhterm/SetLayerType;->setLayerType(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->isRunningOnOUYA()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/offsec/nhterm/Globals;->TvBorders:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/offsec/nhterm/xorg/R$dimen;->screen_border_horizontal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/offsec/nhterm/xorg/R$id;->left:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    sget v7, Lcom/offsec/nhterm/xorg/R$drawable;->tv_border_left:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/offsec/nhterm/xorg/R$dimen;->screen_border_horizontal:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-direct {v4, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/offsec/nhterm/xorg/R$id;->right:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    sget v8, Lcom/offsec/nhterm/xorg/R$drawable;->tv_border_left:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/offsec/nhterm/xorg/R$dimen;->screen_border_vertical:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-direct {v4, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/offsec/nhterm/xorg/R$id;->top:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setId(I)V

    sget v9, Lcom/offsec/nhterm/xorg/R$drawable;->tv_border_top:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/offsec/nhterm/xorg/R$dimen;->screen_border_vertical:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-direct {v4, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    invoke-virtual {v4, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v9

    invoke-virtual {v4, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v9

    invoke-virtual {v4, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v10, Lcom/offsec/nhterm/xorg/R$id;->bottom:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    sget v10, Lcom/offsec/nhterm/xorg/R$drawable;->tv_border_top:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {v1, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v5, v4}, Lcom/offsec/nhterm/NeoGLView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v1, v0}, Lcom/offsec/nhterm/NeoGLView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v1, v0}, Lcom/offsec/nhterm/NeoGLView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v0}, Lcom/offsec/nhterm/NeoGLView;->requestFocus()Z

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->HideSystemMousePointer:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-static {p0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/NeoGLView;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_2
    invoke-static {}, Lcom/offsec/nhterm/DimSystemStatusBar;->get()Lcom/offsec/nhterm/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/DimSystemStatusBar;->dim(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v0}, Lcom/offsec/nhterm/NeoGLView;->nativeScreenVisibleRect(IIII)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/offsec/nhterm/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/MainActivity$2;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public LoadLibraries()V
    .locals 8

    const-string v0, "SDL"

    :try_start_0
    sget-boolean v1, Lcom/offsec/nhterm/Globals;->NeedGles3:Z

    if-eqz v1, :cond_0

    const-string v1, "GLESv3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "libSDL: loaded GLESv3 lib"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/offsec/nhterm/Globals;->NeedGles2:Z

    if-eqz v1, :cond_1

    const-string v1, "GLESv2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "libSDL: loaded GLESv2 lib"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "libSDL: Cannot load GLESv3 or GLESv2 lib"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lcom/offsec/nhterm/Globals;->XLIBS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/offsec/nhterm/Globals;->XLIB_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "libSDL: loading lib "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "libSDL: error loading lib "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_2
    :cond_2
    return-void
.end method

.method public getApplicationVersion()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: Cannot get the version of our own package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getGLView()Lcom/offsec/nhterm/NeoGLView;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    return-object v0
.end method

.method public getVideoLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideScreenKeyboard()V
    .locals 6

    sget-boolean v0, Lcom/offsec/nhterm/MainActivity;->keyboardWithoutTextInputShown:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/offsec/nhterm/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->textInput:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/offsec/nhterm/DemoRenderer;->nativeTextInput(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/offsec/nhterm/DemoRenderer;->nativeTextInputFinished()V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/NeoGLView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/NeoGLView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v0}, Lcom/offsec/nhterm/NeoGLView;->requestFocus()Z

    invoke-static {}, Lcom/offsec/nhterm/DimSystemStatusBar;->get()Lcom/offsec/nhterm/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/DimSystemStatusBar;->dim(Landroid/view/View;)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/offsec/nhterm/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/MainActivity$6;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public initSDL()V
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->setScreenOrientation()V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->updateScreenOrientation()V

    invoke-static {}, Lcom/offsec/nhterm/DimSystemStatusBar;->get()Lcom/offsec/nhterm/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/DimSystemStatusBar;->dim(Landroid/view/View;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nhterm/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/MainActivity$1;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public initScreenOrientation()V
    .locals 0

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->setScreenOrientation()V

    return-void
.end method

.method public isCurrentOrientationHorizontal()Z
    .locals 4

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->AutoDetectOrientation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isKeyboardWithoutTextInputShown()Z
    .locals 1

    sget-boolean v0, Lcom/offsec/nhterm/MainActivity;->keyboardWithoutTextInputShown:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nhterm/MainActivity;->_isPaused:Z

    return v0
.end method

.method public isRunningOnOUYA()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "tv.ouya"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    const-string/jumbo v2, "uimode"

    invoke-virtual {p0, v2}, Lcom/offsec/nhterm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/offsec/nhterm/Globals;->OuyaEmulation:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isScreenKeyboardShown()Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->updateScreenOrientation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "logo.png"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/offsec/nhterm/MainActivity;->instance:Lcom/offsec/nhterm/MainActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/MainActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    sget-boolean v1, Lcom/offsec/nhterm/Globals;->InhibitSuspend:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const-string v1, "SDL"

    const-string v2, "libSDL: Creating startup screen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/offsec/nhterm/MainActivity;->loadingDialog:Landroid/app/ProgressDialog;

    sget v2, Lcom/offsec/nhterm/xorg/R$string;->accessing_network:I

    invoke-virtual {p0, v2}, Lcom/offsec/nhterm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sget v5, Lcom/offsec/nhterm/Globals;->StartupMenuButtonTimeout:I

    if-lez v5, :cond_1

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/offsec/nhterm/xorg/R$string;->device_change_cfg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nhterm/MainActivity$1onClickListener;

    invoke-direct {v4, p0, p0, v1}, Lcom/offsec/nhterm/MainActivity$1onClickListener;-><init>(Lcom/offsec/nhterm/MainActivity;Lcom/offsec/nhterm/MainActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/offsec/nhterm/xorg/R$drawable;->publisherlogo:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/offsec/nhterm/MainActivity$1Callback;

    invoke-direct {v0, p0, p0, v1}, Lcom/offsec/nhterm/MainActivity$1Callback;-><init>(Lcom/offsec/nhterm/MainActivity;Lcom/offsec/nhterm/MainActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/offsec/nhterm/NeoGLView;->exitApp()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/MainActivity;->_isPaused:Z

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/offsec/nhterm/NeoGLView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    array-length p1, p2

    const-string v0, "SDL"

    if-eqz p1, :cond_5

    array-length p1, p3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "android.permission.RECORD_AUDIO"

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "GRANTED"

    const-string v3, "DENIED"

    if-eqz p1, :cond_2

    aget p1, p3, v1

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    const-string v4, "libSDL: Record audio permission: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget p1, p3, v1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const-string p1, "libSDL: Write external storage permission: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/offsec/nhterm/MainActivity;->writeExternalStoragePermissionDialogAnswered:Z

    :cond_4
    return-void

    :cond_5
    :goto_2
    const-string p1, "libSDL: Permission request dialog was aborted"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/offsec/nhterm/DimSystemStatusBar;->get()Lcom/offsec/nhterm/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/DimSystemStatusBar;->dim(Landroid/view/View;)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    invoke-virtual {v0}, Lcom/offsec/nhterm/NeoGLView;->onResume()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nhterm/MainActivity;->_isPaused:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nvidia.intent.action.ENABLE_STYLUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: onWindowFocusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " - sending onPause/onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->onPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->onResume()V

    :goto_0
    return-void
.end method

.method public setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    new-instance p1, Lcom/offsec/nhterm/MainActivity$7;

    invoke-direct {p1, p0}, Lcom/offsec/nhterm/MainActivity$7;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setScreenOrientation()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->AutoDetectOrientation:Z

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->AutoDetectOrientation:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->HorizontalOrientation:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setSystemMousePointerVisible(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->mGLView:Lcom/offsec/nhterm/NeoGLView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/NeoGLView;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/offsec/nhterm/MainActivity$2Callback;

    invoke-direct {v0, p0}, Lcom/offsec/nhterm/MainActivity$2Callback;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/offsec/nhterm/MainActivity$2Callback;->text:Landroid/text/SpannedString;

    iput-object p0, v0, Lcom/offsec/nhterm/MainActivity$2Callback;->Parent:Lcom/offsec/nhterm/MainActivity;

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUpStatusLabel()V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_btn:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    sget v3, Lcom/offsec/nhterm/xorg/R$string;->init:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    int-to-double v3, v1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v5

    double-to-int v1, v3

    int-to-double v3, v0

    mul-double v3, v3, v5

    double-to-int v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showScreenKeyboard(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    if-eqz v0, :cond_0

    sget p1, Lcom/offsec/nhterm/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    const v2, 0x1030218

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v1, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget v1, Lcom/offsec/nhterm/xorg/R$string;->text_edit_click_here:I

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p1, Lcom/offsec/nhterm/MainActivity$1simpleKeyListener;

    invoke-direct {p1, p0, p0}, Lcom/offsec/nhterm/MainActivity$1simpleKeyListener;-><init>(Lcom/offsec/nhterm/MainActivity;Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->isRunningOnOUYA()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/offsec/nhterm/Globals;->TvBorders:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x64

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_3
    iput-object v0, p0, Lcom/offsec/nhterm/MainActivity;->_screenKeyboard:Landroid/view/View;

    iget-object p1, p0, Lcom/offsec/nhterm/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    new-instance p1, Lcom/offsec/nhterm/MainActivity$5;

    invoke-direct {p1, p0, v0}, Lcom/offsec/nhterm/MainActivity$5;-><init>(Lcom/offsec/nhterm/MainActivity;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showScreenKeyboardWithoutTextInputField(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->isKeyboardWithoutTextInputShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nhterm/MainActivity;->keyboardWithoutTextInputShown:Z

    new-instance v0, Lcom/offsec/nhterm/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nhterm/MainActivity$3;-><init>(Lcom/offsec/nhterm/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/offsec/nhterm/MainActivity;->keyboardWithoutTextInputShown:Z

    new-instance p1, Lcom/offsec/nhterm/MainActivity$4;

    invoke-direct {p1, p0}, Lcom/offsec/nhterm/MainActivity$4;-><init>(Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sget-boolean p1, Lcom/offsec/nhterm/MainActivity;->keyboardWithoutTextInputShown:Z

    invoke-static {p1}, Lcom/offsec/nhterm/NeoGLView;->nativeScreenKeyboardShown(I)V

    return-void
.end method

.method public updateScreenOrientation()V
    .locals 3

    invoke-virtual {p0}, Lcom/offsec/nhterm/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-object v1, Lcom/offsec/nhterm/AccelerometerReader;->gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    return-void
.end method
