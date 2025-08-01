.class public Lde/psdev/licensesdialog/LicensesDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LicensesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/psdev/licensesdialog/LicensesDialogFragment$Builder;
    }
.end annotation


# static fields
.field private static final ARGUMENT_DIVIDER_COLOR:Ljava/lang/String; = "ARGUMENT_DIVIDER_COLOR"

.field private static final ARGUMENT_FULL_LICENSE_TEXT:Ljava/lang/String; = "ARGUMENT_FULL_LICENSE_TEXT"

.field private static final ARGUMENT_INCLUDE_OWN_LICENSE:Ljava/lang/String; = "ARGUMENT_INCLUDE_OWN_LICENSE"

.field private static final ARGUMENT_NOTICES:Ljava/lang/String; = "ARGUMENT_NOTICES"

.field private static final ARGUMENT_NOTICES_XML_ID:Ljava/lang/String; = "ARGUMENT_NOTICES_XML_ID"

.field private static final ARGUMENT_NOTICE_STYLE:Ljava/lang/String; = "ARGUMENT_NOTICE_STYLE"

.field private static final ARGUMENT_THEME_XML_ID:Ljava/lang/String; = "ARGUMENT_THEME_XML_ID"

.field private static final STATE_CLOSE_TEXT:Ljava/lang/String; = "close_text"

.field private static final STATE_DIVIDER_COLOR:Ljava/lang/String; = "divider_color"

.field private static final STATE_LICENSES_TEXT:Ljava/lang/String; = "licenses_text"

.field private static final STATE_THEME_XML_ID:Ljava/lang/String; = "theme_xml_id"

.field private static final STATE_TITLE_TEXT:Ljava/lang/String; = "title_text"


# instance fields
.field private mCloseButtonText:Ljava/lang/String;

.field private mDividerColor:I

.field private mLicensesText:Ljava/lang/String;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mThemeResourceId:I

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/psdev/licensesdialog/model/Notices;ZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;
    .locals 0

    invoke-static/range {p0 .. p5}, Lde/psdev/licensesdialog/LicensesDialogFragment;->newInstance(Lde/psdev/licensesdialog/model/Notices;ZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(IZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;
    .locals 0

    invoke-static/range {p0 .. p5}, Lde/psdev/licensesdialog/LicensesDialogFragment;->newInstance(IZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private getNoticesXmlResourceId()I
    .locals 4

    sget v0, Lde/psdev/licensesdialog/R$raw;->notices:I

    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "ARGUMENT_NOTICES_XML_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a raw resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method private static newInstance(IZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;
    .locals 3

    new-instance v0, Lde/psdev/licensesdialog/LicensesDialogFragment;

    invoke-direct {v0}, Lde/psdev/licensesdialog/LicensesDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARGUMENT_NOTICES_XML_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ARGUMENT_FULL_LICENSE_TEXT"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ARGUMENT_INCLUDE_OWN_LICENSE"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ARGUMENT_NOTICE_STYLE"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ARGUMENT_THEME_XML_ID"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ARGUMENT_DIVIDER_COLOR"

    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/psdev/licensesdialog/LicensesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static newInstance(Lde/psdev/licensesdialog/model/Notices;ZZLjava/lang/String;II)Lde/psdev/licensesdialog/LicensesDialogFragment;
    .locals 3

    new-instance v0, Lde/psdev/licensesdialog/LicensesDialogFragment;

    invoke-direct {v0}, Lde/psdev/licensesdialog/LicensesDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARGUMENT_NOTICES"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "ARGUMENT_FULL_LICENSE_TEXT"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ARGUMENT_INCLUDE_OWN_LICENSE"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ARGUMENT_NOTICE_STYLE"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ARGUMENT_THEME_XML_ID"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ARGUMENT_DIVIDER_COLOR"

    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/psdev/licensesdialog/LicensesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "ARGUMENT_DIVIDER_COLOR"

    const-string v1, "ARGUMENT_THEME_XML_ID"

    const-string v2, "ARGUMENT_NOTICES"

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v0, "title_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mTitleText:Ljava/lang/String;

    const-string v0, "licenses_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mLicensesText:Ljava/lang/String;

    const-string v0, "close_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mCloseButtonText:Ljava/lang/String;

    const-string v0, "theme_xml_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mThemeResourceId:I

    :cond_0
    const-string v0, "divider_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mDividerColor:I

    goto/16 :goto_1

    :cond_1
    sget p1, Lde/psdev/licensesdialog/R$string;->notices_title:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mTitleText:Ljava/lang/String;

    sget p1, Lde/psdev/licensesdialog/R$string;->notices_close:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mCloseButtonText:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v4, "ARGUMENT_NOTICES_XML_ID"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getNoticesXmlResourceId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lde/psdev/licensesdialog/NoticesXmlParser;->parse(Ljava/io/InputStream;)Lde/psdev/licensesdialog/model/Notices;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lde/psdev/licensesdialog/model/Notices;

    :goto_0
    const-string v4, "ARGUMENT_INCLUDE_OWN_LICENSE"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lde/psdev/licensesdialog/model/Notices;->getNotices()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lde/psdev/licensesdialog/LicensesDialog;->LICENSES_DIALOG_NOTICE:Lde/psdev/licensesdialog/model/Notice;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "ARGUMENT_FULL_LICENSE_TEXT"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x1030132

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mThemeResourceId:I

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x1060012

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mDividerColor:I

    :cond_5
    const-string v0, "ARGUMENT_NOTICE_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    sget p1, Lde/psdev/licensesdialog/R$string;->notices_default_style:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->create(Landroid/content/Context;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->setNotices(Lde/psdev/licensesdialog/model/Notices;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->setShowFullLicenseText(Z)Lde/psdev/licensesdialog/NoticesHtmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->setStyle(Ljava/lang/String;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->build()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mLicensesText:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing ARGUMENT_NOTICES_XML_ID / ARGUMENT_NOTICES"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing arguments"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Lde/psdev/licensesdialog/LicensesDialog$Builder;

    invoke-virtual {p0}, Lde/psdev/licensesdialog/LicensesDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mLicensesText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->setNotices(Ljava/lang/String;)Lde/psdev/licensesdialog/LicensesDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->setTitle(Ljava/lang/String;)Lde/psdev/licensesdialog/LicensesDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mCloseButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->setCloseText(Ljava/lang/String;)Lde/psdev/licensesdialog/LicensesDialog$Builder;

    move-result-object p1

    iget v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mThemeResourceId:I

    invoke-virtual {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->setThemeResourceId(I)Lde/psdev/licensesdialog/LicensesDialog$Builder;

    move-result-object p1

    iget v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mDividerColor:I

    invoke-virtual {p1, v0}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->setDividerColor(I)Lde/psdev/licensesdialog/LicensesDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lde/psdev/licensesdialog/LicensesDialog$Builder;->build()Lde/psdev/licensesdialog/LicensesDialog;

    move-result-object p1

    invoke-virtual {p1}, Lde/psdev/licensesdialog/LicensesDialog;->create()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "title_text"

    iget-object v1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "licenses_text"

    iget-object v1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mLicensesText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "close_text"

    iget-object v1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mCloseButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mThemeResourceId:I

    if-eqz v0, :cond_0

    const-string v1, "theme_xml_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mDividerColor:I

    if-eqz v0, :cond_1

    const-string v1, "divider_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/LicensesDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
