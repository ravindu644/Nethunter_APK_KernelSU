.class Lcom/hijacker/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$9;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_notif:Z

    iget-object v0, p0, Lcom/hijacker/MainActivity$9;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->finish()V

    return-void
.end method
