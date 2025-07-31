.class public Lcom/offsec/nethunter/MacchangerFragment;
.super Landroidx/fragment/app/Fragment;
.source "MacchangerFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "MacchangerFragment"

.field private static final iFaceAndMacHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSelectedIfacePosition:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private changeMacButton:Landroid/widget/Button;

.field private clearMacButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentMacTextView:Landroid/widget/TextView;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private interfaceSpinner:Landroid/widget/Spinner;

.field private mac1:Landroid/widget/EditText;

.field private mac2:Landroid/widget/EditText;

.field private mac3:Landroid/widget/EditText;

.field private mac4:Landroid/widget/EditText;

.field private mac5:Landroid/widget/EditText;

.field private mac6:Landroid/widget/EditText;

.field private macModeSpinner:Landroid/widget/Spinner;

.field private final mainHandler:Landroid/os/Handler;

.field private netHostNameEditText:Landroid/widget/EditText;

.field private regenerateMacButton:Landroid/widget/Button;

.field private reloadImageButton:Landroid/widget/ImageButton;

.field private resetMacButton:Landroid/widget/Button;

.field private setHostNameButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetchangeMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclearMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMacTextView(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterfaceSpinner(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetregenerateMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresetMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenRandomMACAddress(Lcom/offsec/nethunter/MacchangerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->genRandomMACAddress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetiFaceAndMacHashMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputlastSelectedIfacePosition(I)V
    .locals 0

    sput p0, Lcom/offsec/nethunter/MacchangerFragment;->lastSelectedIfacePosition:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private genRandomMACAddress()V
    .locals 8

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xfc

    const/4 v6, 0x2

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "%02x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    aget-byte v7, v1, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v6, 0x4

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getIfaceAndMacAddr()V
    .locals 10

    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-byte v8, v2, v6

    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v2, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MacchangerFragment"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/MacchangerFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/MacchangerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/MacchangerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setChangeMacButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClearMacButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setHostNameEditText()V
    .locals 1

    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setMacModeSpinner()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$2;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setRegenerateMacButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setReloadImageButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setResetMacButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSetHostnameButton()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupInterfaceSpinner()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->activity:Landroid/app/Activity;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    sget v1, Lcom/offsec/nethunter/MacchangerFragment;->lastSelectedIfacePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$1;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$setChangeMacButton$14$com-offsec-nethunter-MacchangerFragment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MAC address of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to change MAC address on "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Try another MAC."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method

.method synthetic lambda$setChangeMacButton$15$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ip link set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " down && ip link set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " && ip link set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/MacchangerFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setChangeMacButton$16$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing MAC address on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setClearMacButton$6$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$setHostNameEditText$0$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setHostNameEditText$1$com-offsec-nethunter-MacchangerFragment()V
    .locals 5

    const-string v0, "MacchangerFragment"

    const-string v1, "unknown"

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/sys/kernel/hostname"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading hostname: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hostname file not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setRegenerateMacButton$5$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->genRandomMACAddress()V

    return-void
.end method

.method synthetic lambda$setReloadImageButton$7$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->getIfaceAndMacAddr()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V

    return-void
.end method

.method synthetic lambda$setResetMacButton$10$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip link set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " down && ip link set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " && ip link set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/MacchangerFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setResetMacButton$11$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restoring original MAC for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setResetMacButton$12$com-offsec-nethunter-MacchangerFragment()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat /sys/class/net/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, v1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retrieve the original MAC address for interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MacchangerFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setResetMacButton$13$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 0

    new-instance p1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setResetMacButton$8$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to retrieve the original MAC address for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setResetMacButton$9$com-offsec-nethunter-MacchangerFragment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MAC address of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " restored to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to restore MAC address on "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method

.method synthetic lambda$setSetHostnameButton$2$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net.hostname is set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameEditText()V

    return-void
.end method

.method synthetic lambda$setSetHostnameButton$3$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setprop net.hostname "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setSetHostnameButton$4$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/MacchangerFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0066

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    const p2, 0x7f0901fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    const p2, 0x7f090200

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    const p2, 0x7f0901ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    const p2, 0x7f0901fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    const p2, 0x7f0901fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    const p2, 0x7f0901f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    const p2, 0x7f0901fc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    const p2, 0x7f0901f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    const p2, 0x7f0901f4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    const p2, 0x7f0901f5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    const p2, 0x7f0901f6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    const p2, 0x7f0901f7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    const p2, 0x7f0901f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    const p2, 0x7f0901f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->getIfaceAndMacAddr()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameEditText()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setSetHostnameButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setMacModeSpinner()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setReloadImageButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setChangeMacButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setResetMacButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setRegenerateMacButton()V

    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setClearMacButton()V

    return-void
.end method
