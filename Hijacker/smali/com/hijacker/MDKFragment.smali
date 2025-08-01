.class public Lcom/hijacker/MDKFragment;
.super Landroid/app/Fragment;
.source "MDKFragment.java"


# static fields
.field static adhoc:Z = true

.field static ados:Z = false

.field static ados_ap:Lcom/hijacker/AP; = null

.field static ados_switch:Landroid/widget/Switch; = null

.field static aes:Z = true

.field static bf:Z = false

.field static bf_switch:Landroid/widget/Switch; = null

.field static custom_mac:Ljava/lang/String; = null

.field static managed:Z = true

.field static opn:Z = true

.field static ssid_file:Ljava/lang/String; = null

.field static tkip:Z = true

.field static wep:Z = true


# instance fields
.field adhoc_cb:Landroid/widget/CheckBox;

.field aes_cb:Landroid/widget/CheckBox;

.field fragmentView:Landroid/view/View;

.field managed_cb:Landroid/widget/CheckBox;

.field opn_cb:Landroid/widget/CheckBox;

.field select_button:Landroid/widget/Button;

.field ssidView:Landroid/widget/EditText;

.field tkip_cb:Landroid/widget/CheckBox;

.field wep_cb:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method onBfSwitch(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->managed_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->managed:Z

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->adhoc_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->adhoc:Z

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->opn_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->opn:Z

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->wep_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->wep:Z

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->tkip_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->tkip:Z

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->aes_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MDKFragment;->aes:Z

    sget-boolean v1, Lcom/hijacker/MDKFragment;->managed:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/hijacker/MDKFragment;->adhoc:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f100152

    invoke-virtual {p0, v1}, Lcom/hijacker/MDKFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    sget-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/hijacker/MDKFragment;->managed:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/hijacker/MDKFragment;->adhoc:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_2

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/hijacker/MDKFragment;->managed:Z

    if-eqz v1, :cond_3

    const-string v1, " -t 0"

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    sget-boolean v3, Lcom/hijacker/MDKFragment;->adhoc:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -t 1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    sget-boolean v3, Lcom/hijacker/MDKFragment;->opn:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/hijacker/MDKFragment;->wep:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/hijacker/MDKFragment;->tkip:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/hijacker/MDKFragment;->aes:Z

    if-nez v3, :cond_5

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f100150

    invoke-virtual {p0, v1}, Lcom/hijacker/MDKFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    sget-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    const v1, 0x7f1000a0

    invoke-virtual {p0, v1}, Lcom/hijacker/MDKFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    sget-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -w "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/hijacker/MDKFragment;->opn:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x6e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    sget-boolean v3, Lcom/hijacker/MDKFragment;->wep:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x77

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    sget-boolean v3, Lcom/hijacker/MDKFragment;->tkip:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x74

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    sget-boolean v3, Lcom/hijacker/MDKFragment;->aes:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x61

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lcom/hijacker/RootFile;

    invoke-direct {v2, p1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    const v1, 0x7f100118

    invoke-virtual {p0, v1}, Lcom/hijacker/MDKFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    sget-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-static {v1}, Lcom/hijacker/MainActivity;->startBeaconFlooding(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    sput-boolean v0, Lcom/hijacker/MDKFragment;->bf:Z

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/hijacker/MDKFragment;->setRetainInstance(Z)V

    const p3, 0x7f0c003f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090193

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090102

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->managed_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090041

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->adhoc_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09013d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->opn_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->wep_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901c1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->tkip_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090043

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->aes_cb:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090058

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    sput-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090042

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    sput-object p1, Lcom/hijacker/MDKFragment;->ados_switch:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090179

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/MDKFragment;->select_button:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090194

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/hijacker/MDKFragment$1;

    invoke-direct {p2, p0}, Lcom/hijacker/MDKFragment$1;-><init>(Lcom/hijacker/MDKFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    new-instance p2, Lcom/hijacker/MDKFragment$2;

    invoke-direct {p2, p0}, Lcom/hijacker/MDKFragment$2;-><init>(Lcom/hijacker/MDKFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object p1, Lcom/hijacker/MDKFragment;->ados_switch:Landroid/widget/Switch;

    new-instance p2, Lcom/hijacker/MDKFragment$3;

    invoke-direct {p2, p0}, Lcom/hijacker/MDKFragment$3;-><init>(Lcom/hijacker/MDKFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->select_button:Landroid/widget/Button;

    new-instance p2, Lcom/hijacker/MDKFragment$4;

    invoke-direct {p2, p0}, Lcom/hijacker/MDKFragment$4;-><init>(Lcom/hijacker/MDKFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/MDKFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method onDosSwitch(Z)V
    .locals 0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hijacker/MDKFragment;->ados_ap:Lcom/hijacker/AP;

    if-nez p1, :cond_0

    sget-object p1, Lcom/hijacker/MDKFragment;->custom_mac:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/hijacker/MainActivity;->startAdos(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/hijacker/MDKFragment;->ados:Z

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MDKFragment;->ssid_file:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->managed_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->managed:Z

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->adhoc_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->adhoc:Z

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->opn_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->opn:Z

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->wep_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->wep:Z

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->tkip_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->tkip:Z

    iget-object v0, p0, Lcom/hijacker/MDKFragment;->aes_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MDKFragment;->aes:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012c

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    sget-object v0, Lcom/hijacker/MDKFragment;->bf_switch:Landroid/widget/Switch;

    sget-boolean v1, Lcom/hijacker/MDKFragment;->bf:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v0, Lcom/hijacker/MDKFragment;->ados_switch:Landroid/widget/Switch;

    sget-boolean v1, Lcom/hijacker/MDKFragment;->ados:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v0, Lcom/hijacker/MDKFragment;->custom_mac:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hijacker/MDKFragment;->ados_ap:Lcom/hijacker/AP;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    sget-object v1, Lcom/hijacker/AP;->marked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hijacker/AP;

    sput-object v0, Lcom/hijacker/MDKFragment;->ados_ap:Lcom/hijacker/AP;

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->select_button:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/hijacker/MDKFragment;->ssid_file:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->ssidView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v0, Lcom/hijacker/MDKFragment$5;

    invoke-direct {v0, p0}, Lcom/hijacker/MDKFragment$5;-><init>(Lcom/hijacker/MDKFragment;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->managed_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->managed:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->managed_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->adhoc_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->adhoc:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->adhoc_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->opn_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->opn:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->opn_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->wep_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->wep:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->wep_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->tkip_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->tkip:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->tkip_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->aes_cb:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/hijacker/MDKFragment;->aes:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/hijacker/MDKFragment;->aes_cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/hijacker/MDKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    return-void
.end method

.method onSelectClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/hijacker/MDKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-object p1, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hijacker/AP;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v2, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x1

    const-string v3, "Custom"

    invoke-interface {p1, v1, v2, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Lcom/hijacker/MDKFragment$6;

    invoke-direct {p1, p0}, Lcom/hijacker/MDKFragment$6;-><init>(Lcom/hijacker/MDKFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
