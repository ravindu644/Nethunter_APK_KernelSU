.class Lcom/hijacker/CopySampleDialog$2;
.super Ljava/lang/Object;
.source "CopySampleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CopySampleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CopySampleDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/CopySampleDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, " "

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "chroot "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " /bin/bash -c \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/hijacker/ReaverFragment;->get_chroot_env(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "reaver -i "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -vv -b 00:11:22:33:44:55 --channel 6 -L -E -S\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->reaver_dir:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -i "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -vv -b 00:11:22:33:44:55 --channel 6 -L -E -S"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->mdk3bf_dir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " b -m"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --ignore-negative-one --deauth 0 -a 00:11:22:33:44:55 -c 01:23:45:67:89:0a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/wpa.cap-01.cap"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p2}, Lcom/hijacker/CopySampleDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/hijacker/CopySampleDialog$2;->this$0:Lcom/hijacker/CopySampleDialog;

    invoke-virtual {p1}, Lcom/hijacker/CopySampleDialog;->dismissAllowingStateLoss()V

    return-void
.end method
