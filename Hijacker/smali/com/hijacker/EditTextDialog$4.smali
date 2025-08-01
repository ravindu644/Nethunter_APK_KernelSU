.class Lcom/hijacker/EditTextDialog$4;
.super Ljava/lang/Object;
.source "EditTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/EditTextDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/EditTextDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/EditTextDialog$4;->this$0:Lcom/hijacker/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/EditTextDialog$4;->this$0:Lcom/hijacker/EditTextDialog;

    invoke-virtual {p1}, Lcom/hijacker/EditTextDialog;->onOK()V

    return-void
.end method
