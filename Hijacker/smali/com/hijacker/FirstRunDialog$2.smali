.class Lcom/hijacker/FirstRunDialog$2;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FirstRunDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FirstRunDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FirstRunDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FirstRunDialog$2;->this$0:Lcom/hijacker/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/hijacker/InstallFirmwareDialog;

    invoke-direct {p1}, Lcom/hijacker/InstallFirmwareDialog;-><init>()V

    iget-object v0, p0, Lcom/hijacker/FirstRunDialog$2;->this$0:Lcom/hijacker/FirstRunDialog;

    invoke-virtual {v0}, Lcom/hijacker/FirstRunDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "InstallFirmwareDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/InstallFirmwareDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
