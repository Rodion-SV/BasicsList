public final class TimeFormatter {
    public init() {}
    public func format(_ seconds: Int, isShortFormat: Bool) -> String {
        if isShortFormat {
            return formatForTimer(with: seconds)
        } else {
            return formatForAlert(with: seconds)
        }
    }
    struct time {
        let seconds = seconds % 60
        let hours = seconds / 3600
        let minutes = (seconds - hours * 3600) / 60

    }
    func formatForTimer(with seconds: Int) -> String {
        return String("%02d:%02d", radix: time.minutes, uppercase: true)
    }
    func formatForAlert(with seconds: Int) -> String {
        if time.hours > 0 && time.minutes > 0 {
            return String(format: "%d ч. %d мин.", time.hours, time.minutes)
        } else if time.hours > 0 {
            return String(format: "%d ч.", time.hours)
        } else if time.minutes > 0 {
            return String(format: "%d мин.", time.minutes)
        } else {
            return String(format: "%d сек", time.seconds)
        }
    }

}
