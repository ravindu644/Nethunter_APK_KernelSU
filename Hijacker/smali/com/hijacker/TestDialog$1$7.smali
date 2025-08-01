.class Lcom/hijacker/TestDialog$1$7;
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

.field final synthetic val$chroot_check:I


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iput p2, p0, Lcom/hijacker/TestDialog$1$7;->val$chroot_check:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/hijacker/TestDialog$1$7;->val$chroot_check:I

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/hijacker/TestDialog$1$7;->val$chroot_check:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    const v1, 0x7f100053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_cur_cmd:Landroid/widget/TextView;

    const v2, 0x7f100084

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/hijacker/TestDialog$1$7;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
