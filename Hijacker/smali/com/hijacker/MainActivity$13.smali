.class Lcom/hijacker/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity;->checkForUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MainActivity;

.field final synthetic val$customDialog:Lcom/hijacker/CustomDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity;Lcom/hijacker/CustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$13;->this$0:Lcom/hijacker/MainActivity;

    iput-object p2, p0, Lcom/hijacker/MainActivity$13;->val$customDialog:Lcom/hijacker/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/MainActivity$13;->val$customDialog:Lcom/hijacker/CustomDialog;

    iget-object v1, p0, Lcom/hijacker/MainActivity$13;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {v1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CustomDialog for update"

    invoke-virtual {v0, v1, v2}, Lcom/hijacker/CustomDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
