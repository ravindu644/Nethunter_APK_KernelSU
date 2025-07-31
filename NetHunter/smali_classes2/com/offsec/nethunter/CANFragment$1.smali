.class Lcom/offsec/nethunter/CANFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CANFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CANFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CANFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$1;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$1;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/CANFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
