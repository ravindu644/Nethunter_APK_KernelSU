.class public Lde/psdev/licensesdialog/licenses/GnuGeneralPublicLicense30;
.super Lde/psdev/licensesdialog/licenses/License;
.source "GnuGeneralPublicLicense30.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde/psdev/licensesdialog/licenses/License;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "GNU General Public License 3.0"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.gnu.org/licenses/"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method public readFullTextFromResources(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lde/psdev/licensesdialog/R$raw;->gpl_30_full:I

    invoke-virtual {p0, p1, v0}, Lde/psdev/licensesdialog/licenses/GnuGeneralPublicLicense30;->getContent(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readSummaryTextFromResources(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lde/psdev/licensesdialog/R$raw;->gpl_30_summary:I

    invoke-virtual {p0, p1, v0}, Lde/psdev/licensesdialog/licenses/GnuGeneralPublicLicense30;->getContent(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
