.class Lcom/hijacker/TestDialog$1$1;
.super Ljava/lang/Object;
.source "TestDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/TestDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/TestDialog$1;


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$1$1;->this$1:Lcom/hijacker/TestDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/TestDialog$1$1;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
