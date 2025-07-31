.class public Lcom/offsec/nethunter/MPCFragment;
.super Landroidx/fragment/app/Fragment;
.source "MPCFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private builder:Landroid/net/NetworkRequest$Builder;

.field private callbackTypeVar:Ljava/lang/String;

.field private callbackVar:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private payloadVar:Ljava/lang/String;

.field private stagerVar:Ljava/lang/String;

.field private typeVar:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectivityManager(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcallbackTypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcallbackVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpayloadVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstagerVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCmd(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f090311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f090314

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/MPCFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/MPCFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/MPCFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/MPCFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-MPCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cd /sdcard/; msfpc "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "thecmd"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-MPCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cd /var/www/html; msfpc "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "thecmd"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/MPCFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->builder:Landroid/net/NetworkRequest$Builder;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00b2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const p2, 0x7f090316

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000e

    const v1, 0x7f0c00b3

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string p3, "asp"

    iput-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    new-instance p3, Lcom/offsec/nethunter/MPCFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/MPCFragment$1;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090313

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000c

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string p3, "msf"

    iput-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    new-instance p3, Lcom/offsec/nethunter/MPCFragment$2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/MPCFragment$2;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f09030f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000a

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string p3, "reverse"

    iput-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    new-instance p3, Lcom/offsec/nethunter/MPCFragment$3;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/MPCFragment$3;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090315

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000d

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string p3, "staged"

    iput-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    new-instance p3, Lcom/offsec/nethunter/MPCFragment$4;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/MPCFragment$4;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090310

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v0, 0x7f03000b

    invoke-static {p3, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string p3, "tcp"

    iput-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    new-instance p3, Lcom/offsec/nethunter/MPCFragment$5;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/MPCFragment$5;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090314

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f11014a

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object p3, p0, Lcom/offsec/nethunter/MPCFragment;->builder:Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p3

    new-instance v0, Lcom/offsec/nethunter/MPCFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/MPCFragment$6;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p2, "start cmd values"

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    const p3, 0x7f09030e

    invoke-direct {p0, p3, p2, p1}, Lcom/offsec/nethunter/MPCFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    new-instance p2, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    const p3, 0x7f09030d

    invoke-direct {p0, p3, p2, p1}, Lcom/offsec/nethunter/MPCFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    return-object p1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/MPCFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
