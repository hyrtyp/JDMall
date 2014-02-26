.class public interface abstract Lcom/jd/lottery/lib/data/DB;
.super Ljava/lang/Object;
.source "DB.java"

# interfaces
.implements Lcom/jd/droidlib/contract/DB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/data/DB$Column;,
        Lcom/jd/lottery/lib/data/DB$Table;
    }
.end annotation


# static fields
.field public static final FILE:Ljava/lang/String; = "jdlottery.db"

.field public static final TABLE_NAME:[Ljava/lang/String; = null

.field public static final VERSION:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "curr_issue"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "prev_issue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jd/lottery/lib/data/DB;->TABLE_NAME:[Ljava/lang/String;

    return-void
.end method
