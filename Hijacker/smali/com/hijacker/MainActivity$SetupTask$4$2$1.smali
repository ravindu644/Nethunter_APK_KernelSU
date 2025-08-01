.class Lcom/hijacker/MainActivity$SetupTask$4$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/hijacker/MainActivity$SetupTask$4$2;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask$4$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$2$1;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$2$1;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$2;

    iget-object p1, p1, Lcom/hijacker/MainActivity$SetupTask$4$2;->val$capfile:Ljava/lang/String;

    sput-object p1, Lcom/hijacker/CrackFragment;->capfile_text:Ljava/lang/String;

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/hijacker/MainActivity$SetupTask$4$2$1;->this$3:Lcom/hijacker/MainActivity$SetupTask$4$2;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4$2;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v0, v0, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object v0, v0, Lcom/hijacker/MainActivity;->crackFragment:Lcom/hijacker/CrackFragment;

    const v1, 0x7f0900cb

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
