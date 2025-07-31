.class Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomCommandsRecyclerViewAdapterDeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final runOnChrootStartCheckBox:Landroid/widget/CheckBox;


# direct methods
.method static bridge synthetic -$$Nest$fgetrunOnChrootStartCheckBox(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;->runOnChrootStartCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;->runOnChrootStartCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
