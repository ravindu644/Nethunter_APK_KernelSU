.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/CheckBox;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$5:Landroid/widget/CheckBox;

    iput p7, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$6:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$5:Landroid/widget/CheckBox;

    iget v6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;->f$6:I

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->lambda$onBindViewHolder$9$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V

    return-void
.end method
