.class public Lcom/hijacker/CustomActionEditorFragment;
.super Landroid/app/Fragment;
.source "CustomActionEditorFragment.java"


# instance fields
.field action:Lcom/hijacker/CustomAction;

.field fragmentView:Landroid/view/View;

.field has_process_name_cb:Landroid/widget/CheckBox;

.field processNameView:Landroid/widget/EditText;

.field requirement_cb:Landroid/widget/CheckBox;

.field save_btn:Landroid/widget/Button;

.field startCmdView:Landroid/widget/EditText;

.field stopCmdView:Landroid/widget/EditText;

.field titleView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0021

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09019c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09019f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09014c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090158

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0900d1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09015f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->save_btn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090156

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance p2, Lcom/hijacker/CustomActionEditorFragment$1;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionEditorFragment$1;-><init>(Lcom/hijacker/CustomActionEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    new-instance p2, Lcom/hijacker/CustomActionEditorFragment$2;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionEditorFragment$2;-><init>(Lcom/hijacker/CustomActionEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->save_btn:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/CustomActionEditorFragment$3;

    invoke-direct {p2, p0}, Lcom/hijacker/CustomActionEditorFragment$3;-><init>(Lcom/hijacker/CustomActionEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012b

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getStartCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getStopCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v0}, Lcom/hijacker/CustomAction;->getType()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f09004d

    const v3, 0x7f090199

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->requiresClients()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->requiresConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v0}, Lcom/hijacker/CustomAction;->hasProcessName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->titleView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->startCmdView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->stopCmdView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->requirement_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->has_process_name_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hijacker/CustomActionEditorFragment;->action:Lcom/hijacker/CustomAction;

    invoke-virtual {v1}, Lcom/hijacker/CustomAction;->hasProcessName()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionEditorFragment;->save_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/hijacker/CustomActionEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    return-void
.end method
