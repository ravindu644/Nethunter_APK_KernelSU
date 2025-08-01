.class Lcom/hijacker/MainActivity$SetupTask$4$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$1$1;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/hijacker/MainActivity;->progress_int:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
