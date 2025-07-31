.class Lcom/offsec/nethunter/DuckHunterFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/DuckHunterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    const v0, 0x7f090170

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetmenu(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$smsetLang()V

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetshouldconvert(Lcom/offsec/nethunter/DuckHunterFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION"

    const-string v2, "WRITEDUCKY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.offsec.nethunter.WRITEDUCKY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->-$$Nest$fgetmenu(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method
