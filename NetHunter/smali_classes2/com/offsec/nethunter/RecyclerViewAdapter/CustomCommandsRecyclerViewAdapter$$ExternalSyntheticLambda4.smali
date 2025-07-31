.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Landroid/widget/Spinner;

.field public final synthetic f$5:Landroid/widget/CheckBox;

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$4:Landroid/widget/Spinner;

    iput-object p6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$5:Landroid/widget/CheckBox;

    iput p7, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$6:I

    iput-object p8, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$7:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$4:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$5:Landroid/widget/CheckBox;

    iget v6, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$6:I

    iget-object v7, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$$ExternalSyntheticLambda4;->f$7:Landroidx/appcompat/app/AlertDialog;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->lambda$onBindViewHolder$1$com-offsec-nethunter-RecyclerViewAdapter-CustomCommandsRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
