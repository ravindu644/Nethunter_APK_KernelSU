.class Lcom/hijacker/MainActivity$SetupTask$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask;->onPreExecute()V
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

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$2;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$2;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->finish()V

    return-void
.end method
