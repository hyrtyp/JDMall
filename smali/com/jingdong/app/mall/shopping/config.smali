.class public Lcom/jingdong/app/mall/shopping/config;
.super Ljava/lang/Object;
.source "config.java"


# static fields
.field public static GET_PACKS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "packs"

    sput-object v0, Lcom/jingdong/app/mall/shopping/config;->GET_PACKS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
