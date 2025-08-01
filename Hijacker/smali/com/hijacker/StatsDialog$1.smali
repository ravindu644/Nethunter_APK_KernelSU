.class Lcom/hijacker/StatsDialog$1;
.super Ljava/lang/Object;
.source "StatsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/StatsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/StatsDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/StatsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->wpa_count:Landroid/widget/TextView;

    sget v1, Lcom/hijacker/AP;->wpa:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->wpa2_count:Landroid/widget/TextView;

    sget v1, Lcom/hijacker/AP;->wpa2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->wep_count:Landroid/widget/TextView;

    sget v1, Lcom/hijacker/AP;->wep:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->opn_count:Landroid/widget/TextView;

    sget v1, Lcom/hijacker/AP;->opn:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->hidden_count:Landroid/widget/TextView;

    sget v1, Lcom/hijacker/AP;->hidden:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/StatsDialog$1;->this$0:Lcom/hijacker/StatsDialog;

    iget-object v0, v0, Lcom/hijacker/StatsDialog;->connected_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/hijacker/ST;->connected:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/ST;->STs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
