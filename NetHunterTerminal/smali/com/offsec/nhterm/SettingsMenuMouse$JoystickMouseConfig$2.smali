.class Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig$2;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig;->run(Lcom/offsec/nhterm/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig;

.field final synthetic val$p:Lcom/offsec/nhterm/MainActivity;


# direct methods
.method constructor <init>(Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig;Lcom/offsec/nhterm/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig$2;->this$0:Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig;

    iput-object p2, p0, Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig$2;->val$p:Lcom/offsec/nhterm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$JoystickMouseConfig$2;->val$p:Lcom/offsec/nhterm/MainActivity;

    invoke-static {p1}, Lcom/offsec/nhterm/SettingsMenu;->goBack(Lcom/offsec/nhterm/MainActivity;)V

    return-void
.end method
