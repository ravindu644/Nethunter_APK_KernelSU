.class Lcom/hijacker/TestDialog$1$5;
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

.field final synthetic val$cmdReaver:Ljava/lang/String;

.field final synthetic val$results:[Z


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog$1;[ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$1$5;->this$1:Lcom/hijacker/TestDialog$1;

    iput-object p2, p0, Lcom/hijacker/TestDialog$1$5;->val$results:[Z

    iput-object p3, p0, Lcom/hijacker/TestDialog$1$5;->val$cmdReaver:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/hijacker/TestDialog$1$5;->val$results:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_0

    const v1, 0x7f080071

    goto :goto_0

    :cond_0
    const v1, 0x7f080072

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/hijacker/TestDialog$1$5;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/hijacker/TestDialog$1$5;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hijacker/TestDialog$1$5;->val$cmdReaver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
