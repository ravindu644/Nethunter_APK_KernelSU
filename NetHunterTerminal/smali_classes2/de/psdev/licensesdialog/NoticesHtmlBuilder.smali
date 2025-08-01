.class public final Lde/psdev/licensesdialog/NoticesHtmlBuilder;
.super Ljava/lang/Object;
.source "NoticesHtmlBuilder.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLicenseTextCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lde/psdev/licensesdialog/licenses/License;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotice:Lde/psdev/licensesdialog/model/Notice;

.field private mNotices:Lde/psdev/licensesdialog/model/Notices;

.field private mShowFullLicenseText:Z

.field private mStyle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mLicenseTextCache:Ljava/util/Map;

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lde/psdev/licensesdialog/R$string;->notices_default_style:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mStyle:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mShowFullLicenseText:Z

    return-void
.end method

.method private appendNoticeBlock(Ljava/lang/StringBuilder;Lde/psdev/licensesdialog/model/Notice;)V
    .locals 2

    const-string v0, "<ul><li>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lde/psdev/licensesdialog/model/Notice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lde/psdev/licensesdialog/model/Notice;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " (<a href=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" target=\"_blank\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a>)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "</li></ul>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<pre>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lde/psdev/licensesdialog/model/Notice;->getCopyright()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br/><br/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lde/psdev/licensesdialog/model/Notice;->getLicense()Lde/psdev/licensesdialog/licenses/License;

    move-result-object p2

    invoke-direct {p0, p2}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->getLicenseText(Lde/psdev/licensesdialog/licenses/License;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</pre>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendNoticesContainerEnd(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendNoticesContainerStart(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<!DOCTYPE html><html><head>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<style type=\"text/css\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</style>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</head><body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;
    .locals 1

    new-instance v0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;

    invoke-direct {v0, p0}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getLicenseText(Lde/psdev/licensesdialog/licenses/License;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mLicenseTextCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mLicenseTextCache:Ljava/util/Map;

    iget-boolean v1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mShowFullLicenseText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lde/psdev/licensesdialog/licenses/License;->getFullText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lde/psdev/licensesdialog/licenses/License;->getSummaryText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mLicenseTextCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->appendNoticesContainerStart(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotice:Lde/psdev/licensesdialog/model/Notice;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->appendNoticeBlock(Ljava/lang/StringBuilder;Lde/psdev/licensesdialog/model/Notice;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotices:Lde/psdev/licensesdialog/model/Notices;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lde/psdev/licensesdialog/model/Notices;->getNotices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/psdev/licensesdialog/model/Notice;

    invoke-direct {p0, v0, v2}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->appendNoticeBlock(Ljava/lang/StringBuilder;Lde/psdev/licensesdialog/model/Notice;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->appendNoticesContainerEnd(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no notice(s) set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotice(Lde/psdev/licensesdialog/model/Notice;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotice:Lde/psdev/licensesdialog/model/Notice;

    const/4 p1, 0x0

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotices:Lde/psdev/licensesdialog/model/Notices;

    return-object p0
.end method

.method public setNotices(Lde/psdev/licensesdialog/model/Notices;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotices:Lde/psdev/licensesdialog/model/Notices;

    const/4 p1, 0x0

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mNotice:Lde/psdev/licensesdialog/model/Notice;

    return-object p0
.end method

.method public setShowFullLicenseText(Z)Lde/psdev/licensesdialog/NoticesHtmlBuilder;
    .locals 0

    iput-boolean p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mShowFullLicenseText:Z

    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lde/psdev/licensesdialog/NoticesHtmlBuilder;
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/NoticesHtmlBuilder;->mStyle:Ljava/lang/String;

    return-object p0
.end method
