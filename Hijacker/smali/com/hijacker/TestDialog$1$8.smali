.class Lcom/hijacker/TestDialog$1$8;
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

.field final synthetic val$results:[Z


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog$1;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$1$8;->this$1:Lcom/hijacker/TestDialog$1;

    iput-object p2, p0, Lcom/hijacker/TestDialog$1$8;->val$results:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/hijacker/TestDialog$1$8;->val$results:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const v2, 0x7f080071

    goto :goto_1

    :cond_0
    const v2, 0x7f080072

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hijacker/TestDialog$1$8;->this$1:Lcom/hijacker/TestDialog$1;

    iget-object v0, v0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->test_progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
