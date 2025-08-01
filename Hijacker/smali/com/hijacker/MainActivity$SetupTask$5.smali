.class Lcom/hijacker/MainActivity$SetupTask$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MainActivity$SetupTask;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$5;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$5;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->internetAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$5;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hijacker/MainActivity;->checkForUpdate(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
