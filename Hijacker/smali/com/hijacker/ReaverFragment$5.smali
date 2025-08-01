.class Lcom/hijacker/ReaverFragment$5;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ReaverFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$5;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$5;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-virtual {v0}, Lcom/hijacker/ReaverFragment;->attemptStart()V

    return-void
.end method
