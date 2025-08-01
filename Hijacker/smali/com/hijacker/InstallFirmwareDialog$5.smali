.class Lcom/hijacker/InstallFirmwareDialog$5;
.super Ljava/lang/Object;
.source "InstallFirmwareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/InstallFirmwareDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/InstallFirmwareDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/InstallFirmwareDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$5;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$5;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-virtual {p1}, Lcom/hijacker/InstallFirmwareDialog;->attemptRestore()V

    return-void
.end method
