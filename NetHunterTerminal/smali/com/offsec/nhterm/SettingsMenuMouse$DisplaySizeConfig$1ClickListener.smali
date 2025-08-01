.class Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;->run(Lcom/offsec/nhterm/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;

.field final synthetic val$more_options:I

.field final synthetic val$p:Lcom/offsec/nhterm/MainActivity;

.field final synthetic val$size_desktop:I

.field final synthetic val$size_large:I

.field final synthetic val$size_small:I

.field final synthetic val$size_small_touchpad:I


# direct methods
.method constructor <init>(Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;IIIIILcom/offsec/nhterm/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->this$0:Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;

    iput p2, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    iput p3, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    iput p4, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    iput p5, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    iput p6, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    iput-object p7, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/offsec/nhterm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    sput v1, Lcom/offsec/nhterm/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/offsec/nhterm/Globals;->ShowScreenUnderFinger:I

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->ForceHardwareMouse:Z

    :cond_0
    iget p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    if-ne p2, p1, :cond_1

    sput v1, Lcom/offsec/nhterm/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/offsec/nhterm/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ForceHardwareMouse:Z

    :cond_1
    iget p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    if-ne p2, p1, :cond_2

    sput v0, Lcom/offsec/nhterm/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->RelativeMouseMovement:Z

    sput v0, Lcom/offsec/nhterm/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ForceHardwareMouse:Z

    :cond_2
    iget p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    if-ne p2, p1, :cond_3

    const/4 p1, 0x7

    sput p1, Lcom/offsec/nhterm/Globals;->LeftClickMethod:I

    sput-boolean v0, Lcom/offsec/nhterm/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/offsec/nhterm/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/offsec/nhterm/Globals;->ForceHardwareMouse:Z

    :cond_3
    iget p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/offsec/nhterm/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Lcom/offsec/nhterm/SettingsMenu$MainMenu;

    invoke-direct {p1}, Lcom/offsec/nhterm/SettingsMenu$MainMenu;-><init>()V

    iget-object p2, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/offsec/nhterm/MainActivity;

    invoke-virtual {p1, p2}, Lcom/offsec/nhterm/SettingsMenu$MainMenu;->run(Lcom/offsec/nhterm/MainActivity;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/offsec/nhterm/MainActivity;

    invoke-static {p1}, Lcom/offsec/nhterm/SettingsMenu;->goBack(Lcom/offsec/nhterm/MainActivity;)V

    return-void
.end method
