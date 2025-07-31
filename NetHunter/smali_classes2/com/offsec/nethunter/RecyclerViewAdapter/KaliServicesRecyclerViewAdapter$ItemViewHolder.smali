.class Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KaliServicesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final nametextView:Landroid/widget/TextView;

.field private final runOnChrootStartCheckbox:Landroid/widget/CheckBox;

.field private final statustextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwitch(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnametextView(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->nametextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunOnChrootStartCheckbox(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->runOnChrootStartCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatustextView(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->statustextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->nametextView:Landroid/widget/TextView;

    const v0, 0x7f0901eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->runOnChrootStartCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f0901ee

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0901ec

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->statustextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.offsec.nethunter"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "running_on_wearos"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method
