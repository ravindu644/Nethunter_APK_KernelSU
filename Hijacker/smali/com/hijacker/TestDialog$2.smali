.class Lcom/hijacker/TestDialog$2;
.super Ljava/lang/Object;
.source "TestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/TestDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/TestDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$2;->this$0:Lcom/hijacker/TestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/TestDialog$2;->this$0:Lcom/hijacker/TestDialog;

    iget-object p1, p1, Lcom/hijacker/TestDialog;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
