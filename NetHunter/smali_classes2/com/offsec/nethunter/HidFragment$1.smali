.class Lcom/offsec/nethunter/HidFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "HidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/HidFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/HidFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/HidFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$1;->this$0:Lcom/offsec/nethunter/HidFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$1;->this$0:Lcom/offsec/nethunter/HidFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/HidFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/HidFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
