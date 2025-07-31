.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/CheckBox;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$4:Landroid/widget/CheckBox;

    iput p6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$6:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$4:Landroid/widget/CheckBox;

    iget v5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$6:Landroidx/appcompat/app/AlertDialog;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->lambda$onBindViewHolder$8$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
