.class public Lcom/offsec/nethunter/EditSourceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditSourceActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    const p1, 0x7f0c00d1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/EditSourceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060047

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f090407

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/EditSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f110103

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/EditSourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v0, "File Loaded"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public updateSource(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f090407

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/EditSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v0, "Source updated"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v0, "Source not updated"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
