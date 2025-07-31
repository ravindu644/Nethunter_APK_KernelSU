.class public Lcom/offsec/nethunter/AudioFragment;
.super Landroidx/fragment/app/Fragment;
.source "AudioFragment.java"


# static fields
.field public static final DEFAULT_INDEX_BUFFER_HEADROOM:I = 0x4

.field public static final DEFAULT_INDEX_TARGET_LATENCY:I = 0x6

.field public static final TAG:Ljava/lang/String; = "AudioFragment"

.field private static final VALUES_BUFFER_HEADROOM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUES_TARGET_LATENCY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoStartCheckBox:Landroid/widget/CheckBox;

.field private boundService:Lcom/offsec/nethunter/AudioPlaybackService;

.field private bufferHeadroomSpinner:Landroid/widget/Spinner;

.field private error:Ljava/lang/Throwable;

.field private errorText:Landroid/widget/TextView;

.field private fullScrollView:Landroid/widget/ScrollView;

.field private isServiceBound:Z

.field private itemId:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private playButton:Landroid/widget/Button;

.field private portInput:Landroid/widget/EditText;

.field private serverInput:Landroid/widget/EditText;

.field private targetLatencySpinner:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic -$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferHeadroomSpinner(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetLatencySpinner(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputboundService(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisServiceBound(Lcom/offsec/nethunter/AudioFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePlayState(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlayState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->updatePlayState(Lcom/offsec/nethunter/AudioPlayState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePrefs(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlaybackService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->updatePrefs(Lcom/offsec/nethunter/AudioPlaybackService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetVALUES_BUFFER_HEADROOM()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVALUES_TARGET_LATENCY()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v4, 0x3d09

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-wide/16 v6, 0x7a12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-wide/32 v8, 0xf424

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-wide/32 v10, 0x1e848

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v1, v11

    const-wide/32 v12, 0x3d090

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v1, v13

    const-wide/32 v14, 0x7a120

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v1, v15

    const-wide/32 v16, 0xf4240

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x7

    aput-object v16, v1, v17

    const-wide/32 v18, 0x1e8480

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x8

    aput-object v18, v1, v19

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Long;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    aput-object v6, v1, v7

    aput-object v8, v1, v9

    aput-object v10, v1, v11

    aput-object v12, v1, v13

    aput-object v14, v1, v15

    aput-object v16, v1, v17

    aput-object v18, v1, v19

    const-wide/32 v2, 0x4c4b40

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-wide/32 v2, 0x989680

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    new-instance v0, Lcom/offsec/nethunter/AudioFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AudioFragment$1;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private appendDashes()V
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "------------------\n"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private appendErrorText(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%.3fs"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "Default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPlayButtonText(Lcom/offsec/nethunter/AudioPlayState;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/AudioFragment$3;->$SwitchMap$com$offsec$nethunter$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlayState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x7f110053

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f110052

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f110051

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, 0x7f11004d

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const p1, 0x7f110050

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const p1, 0x7f11004f

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/AudioFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/AudioFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ITEM_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    move p5, p2

    :cond_0
    invoke-virtual {p1, p5}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance p2, Lcom/offsec/nethunter/AudioFragment$2;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/AudioFragment$2;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setupDefaultAudioConfig()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const v1, 0x7f11002d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const v1, 0x7f11002c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private updatePlayState(Lcom/offsec/nethunter/AudioPlayState;)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getPlayButtonText(Lcom/offsec/nethunter/AudioPlayState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/offsec/nethunter/AudioFragment$3;->$SwitchMap$com$offsec$nethunter$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlayState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x1060018

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    const v3, 0x1060015

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Connection Disconnecting"

    const v0, 0x1060016

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "Everything is working fine! Enjoy!"

    invoke-direct {p0, p1, v3}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "Establishing Connection"

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "Connection Starting"

    invoke-direct {p0, p1, v3}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "Disconnected State"

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "An error occurred: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x1060017

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    :cond_5
    return-void
.end method

.method private updatePrefs(Lcom/offsec/nethunter/AudioPlaybackService;)V
    .locals 14

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getServerPref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getPortPref()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getAutostartPref()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    sget-object v4, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getBufferHeadroom()J

    move-result-wide v5

    const/4 v7, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V

    iget-object v9, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    sget-object v10, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getTargetLatency()J

    move-result-wide v11

    const/4 v13, 0x6

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFullScrollView()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-AudioFragment(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlayState;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->stop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->play()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const v0, 0x7f11002f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "onCreateAudioFragment"

    const-string v0, "AudioFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "ITEM_ID"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/offsec/nethunter/AudioFragment;->itemId:I

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Received itemId: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/offsec/nethunter/AudioFragment;->itemId:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c001c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090272

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    const p2, 0x7f090015

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const p2, 0x7f090014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const p2, 0x7f09008a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f09000e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    const p2, 0x7f090187

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const p2, 0x7f0900d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    const p2, 0x7f09046b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    const p2, 0x7f0902ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0900d4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0900d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f110057

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v2, "Maintainer: {0}"

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f11013b

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const-string p3, "Info: {0}"

    invoke-static {p3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f110056

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "Version: {0}"

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    new-instance p3, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->setupDefaultAudioConfig()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    :cond_0
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public play()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const-string v1, "Server cannot be empty"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    const-string v3, "AudioFragment"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Attempting to play on server: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " port: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->setPrefs(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-virtual {v2, v0, v1}, Lcom/offsec/nethunter/AudioPlaybackService;->play(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const v1, 0x7f11002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "Service not bound when attempting to play."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const-string v1, "Invalid port number"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFullScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/AudioPlaybackService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioPlaybackService;->stop()V

    :cond_0
    return-void
.end method
