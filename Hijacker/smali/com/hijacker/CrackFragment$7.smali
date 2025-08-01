.class Lcom/hijacker/CrackFragment$7;
.super Ljava/lang/Object;
.source "CrackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CrackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CrackFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CrackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CrackFragment$7;->this$0:Lcom/hijacker/CrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/hijacker/WordlistDownloadDialog;

    invoke-direct {p1}, Lcom/hijacker/WordlistDownloadDialog;-><init>()V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$7;->this$0:Lcom/hijacker/CrackFragment;

    invoke-virtual {v0}, Lcom/hijacker/CrackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "WordlistDownloadDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/WordlistDownloadDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
