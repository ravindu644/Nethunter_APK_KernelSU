.class Lcom/hijacker/ReaverFragment$4;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment;->onResume()V
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

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$4;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$4;->this$0:Lcom/hijacker/ReaverFragment;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
